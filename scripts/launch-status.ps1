param(
  [string]$SiteDir = 'site',
  [string]$ContentLogPath = 'working/tracking/content_log.csv',
  [string]$ContentInventoryPath = 'working/audits/content_inventory.csv',
  [string]$DefaultPlaceholderHost = 'tanhs-compact-kitchen.netlify.app'
)

$ErrorActionPreference = 'Stop'

$root = Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')
$sitePath = Resolve-Path -LiteralPath (Join-Path $root $SiteDir)
$contentLogFullPath = Join-Path $root $ContentLogPath
$inventoryFullPath = Join-Path $root $ContentInventoryPath
$contactPath = Join-Path $sitePath 'contact/index.html'
$robotsPath = Join-Path $sitePath 'robots.txt'
$sitemapPath = Join-Path $sitePath 'sitemap.xml'
$zipPath = Join-Path $root 'working/deploy/tanhs-compact-kitchen-site.zip'

$htmlFiles = @(Get-ChildItem -LiteralPath $sitePath -Recurse -Filter *.html -File)
$contentRows = if (Test-Path -LiteralPath $contentLogFullPath) { @(Import-Csv -LiteralPath $contentLogFullPath) } else { @() }
$inventoryRows = if (Test-Path -LiteralPath $inventoryFullPath) { @(Import-Csv -LiteralPath $inventoryFullPath) } else { @() }

$sitemapUrlCount = 0
$sitemapHosts = @()
$sitemapUsesPlaceholderHost = $false
if (Test-Path -LiteralPath $sitemapPath) {
  $sitemapXml = [xml](Get-Content -LiteralPath $sitemapPath -Raw)
  $sitemapUrls = @($sitemapXml.urlset.url)
  $sitemapUrlCount = $sitemapUrls.Count
  $sitemapHosts = @(
    $sitemapUrls |
      ForEach-Object {
        try { ([uri]([string]$_.loc)).Host } catch { $null }
      } |
      Where-Object { $_ } |
      Sort-Object -Unique
  )
  $sitemapUsesPlaceholderHost = $sitemapHosts -contains $DefaultPlaceholderHost
}

$robotsSitemap = ''
if (Test-Path -LiteralPath $robotsPath) {
  $robotsText = Get-Content -LiteralPath $robotsPath -Raw
  if ($robotsText -match 'Sitemap:\s+(https://[^\s]+/sitemap\.xml)') {
    $robotsSitemap = $Matches[1]
  }
}

$placeholderEmailPresent = $false
if (Test-Path -LiteralPath $contactPath) {
  $contactText = Get-Content -LiteralPath $contactPath -Raw
  $placeholderEmailPresent = $contactText -match 'hello@example\.com'
}

$sourceReadyRows = @($inventoryRows | Where-Object { $_.InContentLog -eq 'Yes' -and $_.Priority -eq 'Source-ready' })
$needsExpansionRows = @($inventoryRows | Where-Object { $_.InContentLog -eq 'Yes' -and $_.Priority -eq 'Expand before heavy promotion' })
$needsInternalLinkRows = @($inventoryRows | Where-Object { $_.InContentLog -eq 'Yes' -and $_.Priority -eq 'Add article-body internal links' })
$launchBlockerRows = @($inventoryRows | Where-Object { $_.Priority -eq 'Launch blocker' })

$blockers = New-Object System.Collections.Generic.List[string]
if ($placeholderEmailPresent) {
  $blockers.Add('Replace hello@example.com with the public contact email.')
}
if ($sitemapUsesPlaceholderHost) {
  $blockers.Add("Update sitemap.xml and robots.txt after the final public URL is known.")
}
if ($sitemapUrlCount -ne $htmlFiles.Count) {
  $blockers.Add("Sitemap URL count does not match HTML file count.")
}
if ($contentRows.Count -gt 0 -and $sourceReadyRows.Count -lt $contentRows.Count) {
  $blockers.Add("Not all logged content pages are Source-ready.")
}

[pscustomobject]@{
  ProjectRoot = $root.Path
  HtmlFiles = $htmlFiles.Count
  SitemapUrls = $sitemapUrlCount
  SitemapHosts = ($sitemapHosts -join ', ')
  RobotsSitemap = $robotsSitemap
  ContentRows = $contentRows.Count
  SourceReadyContentPages = $sourceReadyRows.Count
  ExpansionImprovements = $needsExpansionRows.Count
  InternalLinkImprovements = $needsInternalLinkRows.Count
  AuditLaunchBlockers = $launchBlockerRows.Count
  PlaceholderEmailPresent = $placeholderEmailPresent
  PlaceholderHostPresent = $sitemapUsesPlaceholderHost
  DeployZipExists = Test-Path -LiteralPath $zipPath
  DeployZipBytes = if (Test-Path -LiteralPath $zipPath) { (Get-Item -LiteralPath $zipPath).Length } else { 0 }
  LaunchBlockerCount = $blockers.Count
  LaunchBlockers = ($blockers -join ' | ')
}
