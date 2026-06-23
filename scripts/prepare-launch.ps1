param(
  [Parameter(Mandatory = $true)]
  [ValidatePattern('^https://[^/]+/?$')]
  [string]$PublicUrl,

  [Parameter(Mandatory = $true)]
  [ValidatePattern('^[^@\s]+@[^@\s]+\.[^@\s]+$')]
  [string]$ContactEmail,

  [string]$SiteDir = 'site',
  [string]$ZipPath = 'working/deploy/tanhs-compact-kitchen-site.zip'
)

$ErrorActionPreference = 'Stop'

$root = Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')
$sitePath = Resolve-Path -LiteralPath (Join-Path $root $SiteDir)
$baseUrl = $PublicUrl.TrimEnd('/')

function Write-TextFileUtf8NoBom {
  param(
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][string]$Text
  )

  $encoding = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($Path, $Text, $encoding)
}

function Assert-PathUnderRoot {
  param(
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][string]$AllowedRoot
  )

  $resolvedPath = [System.IO.Path]::GetFullPath($Path)
  $resolvedRoot = [System.IO.Path]::GetFullPath($AllowedRoot)
  if (-not $resolvedPath.StartsWith($resolvedRoot, [System.StringComparison]::OrdinalIgnoreCase)) {
    throw "Refusing to write outside project root: $resolvedPath"
  }
}

$contactPath = Join-Path $sitePath 'contact/index.html'
$robotsPath = Join-Path $sitePath 'robots.txt'
$sitemapPath = Join-Path $sitePath 'sitemap.xml'
$zipFullPath = Join-Path $root $ZipPath

foreach ($path in @($contactPath, $robotsPath, $sitemapPath, $zipFullPath)) {
  Assert-PathUnderRoot -Path $path -AllowedRoot $root
}

$contactHtml = Get-Content -LiteralPath $contactPath -Raw
$contactHtml = [regex]::Replace($contactHtml, 'mailto:[^"]+', "mailto:$ContactEmail")
$contactHtml = [regex]::Replace($contactHtml, '>[^<@\s]+@[^<@\s]+\.[^<\s]+<', ">$ContactEmail<")
$contactHtml = $contactHtml.Replace(
  '<p>Replace this email address before launch with the address Tanh wants to use publicly.</p>',
  '<p>Use this address for corrections, product documentation, and collaboration notes.</p>'
)
Write-TextFileUtf8NoBom -Path $contactPath -Text $contactHtml

$robotsText = Get-Content -LiteralPath $robotsPath -Raw
$robotsText = [regex]::Replace($robotsText, 'Sitemap:\s+https?://[^\s]+/sitemap\.xml', "Sitemap: $baseUrl/sitemap.xml")
Write-TextFileUtf8NoBom -Path $robotsPath -Text $robotsText

$sitemapText = Get-Content -LiteralPath $sitemapPath -Raw
$sitemapText = [regex]::Replace($sitemapText, '<urlset\s+xmlns="[^"]+">', '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">')
$sitemapText = [regex]::Replace($sitemapText, '(<loc>)https?://[^/]+', "`$1$baseUrl")
Write-TextFileUtf8NoBom -Path $sitemapPath -Text $sitemapText

$zipDirectory = Split-Path -Parent $zipFullPath
New-Item -ItemType Directory -Force -Path $zipDirectory | Out-Null
Compress-Archive -Path (Join-Path $sitePath '*') -DestinationPath $zipFullPath -Force

$htmlCount = (Get-ChildItem -LiteralPath $sitePath -Recurse -Filter *.html | Measure-Object).Count
$sitemapUrlCount = ([xml](Get-Content -LiteralPath $sitemapPath -Raw)).GetElementsByTagName('url').Count
$zipBytes = (Get-Item -LiteralPath $zipFullPath).Length

[pscustomobject]@{
  PublicUrl = $baseUrl
  ContactEmail = $ContactEmail
  HtmlFiles = $htmlCount
  SitemapUrls = $sitemapUrlCount
  ZipPath = $zipFullPath
  ZipBytes = $zipBytes
}
