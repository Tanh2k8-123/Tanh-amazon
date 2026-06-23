param(
  [string]$SiteDir = 'site',
  [string]$ContentLogPath = 'working/tracking/content_log.csv',
  [string]$InventoryPath = 'working/audits/content_inventory.csv',
  [string]$ReportPath = 'working/audits/content_improvement_priorities.md'
)

$ErrorActionPreference = 'Stop'

$root = Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')
$sitePath = Resolve-Path -LiteralPath (Join-Path $root $SiteDir)
$contentLogFullPath = Join-Path $root $ContentLogPath
$inventoryFullPath = Join-Path $root $InventoryPath
$reportFullPath = Join-Path $root $ReportPath

function Write-TextFileUtf8NoBom {
  param(
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][string]$Text
  )

  $encoding = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($Path, $Text, $encoding)
}

function Get-SiteUrlFromPath {
  param(
    [Parameter(Mandatory = $true)][System.IO.FileInfo]$File,
    [Parameter(Mandatory = $true)][string]$SiteRoot
  )

  $relative = $File.FullName.Substring($SiteRoot.Length).TrimStart('\', '/')
  $relative = $relative -replace '\\', '/'
  if ($relative -eq 'index.html') {
    return '/'
  }
  return '/' + ($relative -replace '/index\.html$', '/')
}

function Convert-HtmlToText {
  param([string]$Html)

  $withoutScripts = [regex]::Replace($Html, '<script\b[^>]*>.*?</script>', ' ', 'Singleline,IgnoreCase')
  $withoutStyles = [regex]::Replace($withoutScripts, '<style\b[^>]*>.*?</style>', ' ', 'Singleline,IgnoreCase')
  $withoutTags = [regex]::Replace($withoutStyles, '<[^>]+>', ' ')
  $decoded = [System.Net.WebUtility]::HtmlDecode($withoutTags)
  return [regex]::Replace($decoded, '\s+', ' ').Trim()
}

function Get-ArticleHtml {
  param([string]$Html)

  $match = [regex]::Match($Html, '<article\b[^>]*class="[^"]*\barticle\b[^"]*"[^>]*>(.*?)</article>', 'Singleline,IgnoreCase')
  if ($match.Success) {
    return $match.Groups[1].Value
  }
  $main = [regex]::Match($Html, '<main\b[^>]*>(.*?)</main>', 'Singleline,IgnoreCase')
  if ($main.Success) {
    return $main.Groups[1].Value
  }
  return $Html
}

function Count-Words {
  param([string]$Text)

  if ([string]::IsNullOrWhiteSpace($Text)) {
    return 0
  }
  return ([regex]::Matches($Text, '\b[\w''-]+\b')).Count
}

$contentLogUrls = @{}
if (Test-Path -LiteralPath $contentLogFullPath) {
  Import-Csv -LiteralPath $contentLogFullPath | ForEach-Object {
    if ($_.URL) {
      $contentLogUrls[$_.URL] = $true
    }
  }
}

$htmlFiles = Get-ChildItem -LiteralPath $sitePath -Recurse -Filter *.html -File | Sort-Object FullName
$rows = foreach ($file in $htmlFiles) {
  $html = Get-Content -LiteralPath $file.FullName -Raw
  $articleHtml = Get-ArticleHtml -Html $html
  $articleText = Convert-HtmlToText -Html $articleHtml
  $url = Get-SiteUrlFromPath -File $file -SiteRoot $sitePath.Path

  $titleMatch = [regex]::Match($html, '<title>(.*?)</title>', 'Singleline,IgnoreCase')
  $metaMatch = [regex]::Match($html, '<meta\s+name="description"\s+content="([^"]*)"', 'IgnoreCase')
  $h1Count = ([regex]::Matches($html, '<h1\b', 'IgnoreCase')).Count
  $h2Count = ([regex]::Matches($articleHtml, '<h2\b', 'IgnoreCase')).Count
  $articleLinks = [regex]::Matches($articleHtml, 'href="([^"]+)"', 'IgnoreCase')
  $internalArticleLinks = 0
  $externalArticleLinks = 0
  foreach ($link in $articleLinks) {
    $href = $link.Groups[1].Value
    if ($href -match '^https?://') {
      $externalArticleLinks += 1
    } elseif ($href -match '^/' -and $href -notmatch '^//') {
      $internalArticleLinks += 1
    }
  }

  $isContentLogged = $contentLogUrls.ContainsKey($url)
  $isArticle = $html -match '<article\b[^>]*class="[^"]*\barticle\b'
  $hasNoAffiliateNote = $html -match 'No affiliate links yet'
  $hasAmazonStatement = $html -match 'As an Amazon Associate I earn from qualifying purchases\.'
  $hasPlaceholderEmail = $html -match 'hello@example\.com'
  $wordCount = Count-Words -Text $articleText

  $priority = 'Ready for launch check'
  if ($hasPlaceholderEmail) {
    $priority = 'Launch blocker'
  } elseif ($isContentLogged -and $wordCount -lt 450) {
    $priority = 'Expand before heavy promotion'
  } elseif ($isContentLogged -and $internalArticleLinks -lt 2) {
    $priority = 'Add article-body internal links'
  } elseif ($isContentLogged -and -not $hasNoAffiliateNote) {
    $priority = 'Confirm disclosure note'
  } elseif ($isContentLogged) {
    $priority = 'Source-ready'
  } elseif ($url -match '^/(about|contact|privacy-policy|affiliate-disclosure)/?$') {
    $priority = 'Required page'
  } else {
    $priority = 'Hub or utility page'
  }

  [pscustomobject]@{
    URL = $url
    Title = if ($titleMatch.Success) { [System.Net.WebUtility]::HtmlDecode($titleMatch.Groups[1].Value.Trim()) } else { '' }
    ArticlePage = if ($isArticle) { 'Yes' } else { 'No' }
    InContentLog = if ($isContentLogged) { 'Yes' } else { 'No' }
    WordCount = $wordCount
    H1Count = $h1Count
    H2Count = $h2Count
    ArticleInternalLinks = $internalArticleLinks
    ArticleExternalLinks = $externalArticleLinks
    HasMetaDescription = if ($metaMatch.Success -and $metaMatch.Groups[1].Value.Trim().Length -gt 0) { 'Yes' } else { 'No' }
    HasAmazonStatement = if ($hasAmazonStatement) { 'Yes' } else { 'No' }
    HasNoAffiliateNote = if ($hasNoAffiliateNote) { 'Yes' } else { 'No' }
    PlaceholderEmail = if ($hasPlaceholderEmail) { 'Yes' } else { 'No' }
    Priority = $priority
  }
}

New-Item -ItemType Directory -Force -Path (Split-Path -Parent $inventoryFullPath) | Out-Null
$rows | Export-Csv -LiteralPath $inventoryFullPath -NoTypeInformation

$contentRows = @($rows | Where-Object { $_.InContentLog -eq 'Yes' })
$launchBlockers = @($rows | Where-Object { $_.Priority -eq 'Launch blocker' })
$needsInternalLinks = @($rows | Where-Object { $_.Priority -eq 'Add article-body internal links' })
$needsExpansion = @($rows | Where-Object { $_.Priority -eq 'Expand before heavy promotion' })
$missingMeta = @($rows | Where-Object { $_.HasMetaDescription -ne 'Yes' })
$lowH1Quality = @($rows | Where-Object { $_.H1Count -ne 1 })

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add('# Content Improvement Priorities')
$lines.Add('')
$lines.Add('Last generated: ' + (Get-Date).ToString('yyyy-MM-dd'))
$lines.Add('')
$lines.Add('## Summary')
$lines.Add('')
$lines.Add("| Metric | Count |")
$lines.Add("| --- | --- |")
$lines.Add("| HTML pages | $($rows.Count) |")
$lines.Add("| Content-log pages | $($contentRows.Count) |")
$lines.Add("| Launch blockers | $($launchBlockers.Count) |")
$lines.Add("| Content pages needing article-body internal links | $($needsInternalLinks.Count) |")
$lines.Add("| Content pages needing expansion before heavy promotion | $($needsExpansion.Count) |")
$lines.Add("| Pages missing meta description | $($missingMeta.Count) |")
$lines.Add("| Pages without exactly one H1 | $($lowH1Quality.Count) |")
$lines.Add('')
$lines.Add('## Launch Blockers')
$lines.Add('')
if ($launchBlockers.Count -eq 0) {
  $lines.Add('- None detected by content audit.')
} else {
  foreach ($item in $launchBlockers) {
    $lines.Add('- `' + $item.URL + '` - replace placeholder email before public launch.')
  }
}
$lines.Add('')
$lines.Add('## First Improvement Queue')
$lines.Add('')
$queue = @($needsInternalLinks + $needsExpansion | Sort-Object @{ Expression = { [int]$_.ArticleInternalLinks } }, @{ Expression = { [int]$_.WordCount } } | Select-Object -First 10)
if ($queue.Count -eq 0) {
  $lines.Add('- No content pages require immediate pre-launch improvement based on this audit.')
} else {
  foreach ($item in $queue) {
    $lines.Add('- `' + $item.URL + '` - ' + $item.Priority + '; words: ' + $item.WordCount + '; article internal links: ' + $item.ArticleInternalLinks + '.')
  }
}
$lines.Add('')
$lines.Add('## Operating Notes')
$lines.Add('')
$lines.Add('- Article-body internal links matter because nav/footer links do not guide readers through the content journey.')
$lines.Add('- Do not add affiliate links until the public site is live and the Amazon Associates workflow is ready.')
$lines.Add('- Use this report with `working/content_status.md` before choosing the next content update.')

Write-TextFileUtf8NoBom -Path $reportFullPath -Text ($lines -join [Environment]::NewLine)

[pscustomobject]@{
  InventoryPath = $inventoryFullPath
  ReportPath = $reportFullPath
  HtmlPages = $rows.Count
  ContentPages = $contentRows.Count
  LaunchBlockers = $launchBlockers.Count
  InternalLinkImprovements = $needsInternalLinks.Count
  ExpansionImprovements = $needsExpansion.Count
}
