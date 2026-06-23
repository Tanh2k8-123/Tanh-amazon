param(
  [string]$SiteDir = 'site',
  [switch]$AllowLaunchPlaceholders
)

$ErrorActionPreference = 'Stop'

$root = Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')
$sitePath = Resolve-Path -LiteralPath (Join-Path $root $SiteDir)
$errors = New-Object System.Collections.Generic.List[string]

function Add-Error {
  param([string]$Message)
  $errors.Add($Message)
}

$requiredPaths = @(
  'index.html',
  'about/index.html',
  'contact/index.html',
  'privacy-policy/index.html',
  'affiliate-disclosure/index.html',
  'guides/index.html',
  'best/index.html',
  'comparisons/index.html',
  'reviews/index.html',
  'robots.txt',
  'sitemap.xml',
  'favicon.svg',
  'assets/compact-kitchen-hero.png'
)

foreach ($relative in $requiredPaths) {
  if (-not (Test-Path -LiteralPath (Join-Path $sitePath $relative))) {
    Add-Error "Missing required site file: $relative"
  }
}

$htmlFiles = Get-ChildItem -LiteralPath $sitePath -Recurse -Filter *.html -File
$sourceFiles = Get-ChildItem -LiteralPath $sitePath -Recurse -Include *.html,*.xml,*.txt -File

foreach ($file in $sourceFiles) {
  $text = Get-Content -LiteralPath $file.FullName -Raw
  $matches = [regex]::Matches($text, '(?:href|src)="([^"]+)"')
  foreach ($match in $matches) {
    $url = $match.Groups[1].Value
    if ($url -match '^(https?:|mailto:|#)' -or $url -eq '') {
      continue
    }
    $path = $url.Split('?')[0].Split('#')[0]
    if ($path.StartsWith('/')) {
      $target = Join-Path $sitePath $path.TrimStart('/')
    } else {
      $target = Join-Path (Split-Path -Parent $file.FullName) $path
    }
    if ($path.EndsWith('/')) {
      $target = Join-Path $target 'index.html'
    }
    if (-not (Test-Path -LiteralPath $target)) {
      Add-Error "$($file.FullName): broken local reference $url"
    }
  }
}

$contactText = Get-Content -LiteralPath (Join-Path $sitePath 'contact/index.html') -Raw
if (-not $AllowLaunchPlaceholders -and $contactText -match 'hello@example\.com') {
  Add-Error 'Launch placeholder email is still present.'
}

$robotsText = Get-Content -LiteralPath (Join-Path $sitePath 'robots.txt') -Raw
$sitemapText = Get-Content -LiteralPath (Join-Path $sitePath 'sitemap.xml') -Raw
$sitemapXml = [xml]$sitemapText
$sitemapUrls = @($sitemapXml.urlset.url)

if ($sitemapUrls.Count -ne $htmlFiles.Count) {
  Add-Error "Sitemap URL count ($($sitemapUrls.Count)) does not match HTML file count ($($htmlFiles.Count))."
}

if ($robotsText -notmatch 'Sitemap:\s+(https://[^\s]+/sitemap\.xml)') {
  Add-Error 'robots.txt does not contain a valid https sitemap URL.'
} else {
  $robotsSitemap = $Matches[1]
  $firstSitemapUrl = [string]$sitemapUrls[0].loc
  $robotsBase = $robotsSitemap -replace '/sitemap\.xml$', ''
  $sitemapBase = $firstSitemapUrl.TrimEnd('/')
  if (-not $sitemapBase.StartsWith($robotsBase, [System.StringComparison]::OrdinalIgnoreCase)) {
    Add-Error "robots sitemap base ($robotsBase) does not match sitemap loc base ($firstSitemapUrl)."
  }
}

if ($sitemapUrls | Where-Object { -not ([string]$_.loc).StartsWith('https://') }) {
  Add-Error 'Sitemap contains non-https URLs.'
}

if ($errors.Count -gt 0) {
  $errors | ForEach-Object { Write-Error $_ }
  exit 1
}

[pscustomobject]@{
  Status = 'passed'
  HtmlFiles = $htmlFiles.Count
  SourceFilesScanned = $sourceFiles.Count
  SitemapUrls = $sitemapUrls.Count
  LaunchPlaceholdersAllowed = [bool]$AllowLaunchPlaceholders
}
