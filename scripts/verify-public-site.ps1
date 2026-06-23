param(
  [ValidatePattern('^https://[^/]+/?$')]
  [string]$PublicUrl = 'https://tanhamazon.netlify.app',

  [string]$ContactEmail = 'dotuananh20082006@gmail.com'
)

$ErrorActionPreference = 'Stop'

$baseUrl = $PublicUrl.TrimEnd('/')
$errors = New-Object System.Collections.Generic.List[string]

function Add-Error {
  param([string]$Message)
  $errors.Add($Message)
}

function Get-PublicContent {
  param([string]$Url)

  $response = Invoke-WebRequest -Uri $Url -UseBasicParsing -TimeoutSec 30
  [pscustomobject]@{
    StatusCode = [int]$response.StatusCode
    Content = [string]$response.Content
  }
}

$robotsUrl = "$baseUrl/robots.txt"
$sitemapUrl = "$baseUrl/sitemap.xml"

$robots = Get-PublicContent -Url $robotsUrl
if ($robots.StatusCode -ne 200) {
  Add-Error "robots.txt returned HTTP $($robots.StatusCode)."
}
if ($robots.Content -notmatch [regex]::Escape("Sitemap: $sitemapUrl")) {
  Add-Error "robots.txt does not point to $sitemapUrl."
}

$sitemap = Get-PublicContent -Url $sitemapUrl
if ($sitemap.StatusCode -ne 200) {
  Add-Error "sitemap.xml returned HTTP $($sitemap.StatusCode)."
}
if ($sitemap.Content -notmatch '<urlset\s+xmlns="http://www\.sitemaps\.org/schemas/sitemap/0\.9"') {
  Add-Error 'sitemap.xml does not use the standard sitemaps.org namespace.'
}

$sitemapXml = [xml]$sitemap.Content
$locs = @($sitemapXml.GetElementsByTagName('loc') | ForEach-Object { $_.InnerText })
if ($locs.Count -eq 0) {
  Add-Error 'sitemap.xml contains no loc entries.'
}

$nonHttps = @($locs | Where-Object { -not $_.StartsWith('https://') })
if ($nonHttps.Count -gt 0) {
  Add-Error "sitemap.xml contains non-HTTPS URLs: $($nonHttps -join ', ')."
}

$wrongHost = @($locs | Where-Object { -not $_.StartsWith("$baseUrl/") -and $_ -ne "$baseUrl/" })
if ($wrongHost.Count -gt 0) {
  Add-Error "sitemap.xml contains URLs outside ${baseUrl}: $($wrongHost -join ', ')."
}

$urlResults = foreach ($loc in $locs) {
  try {
    $response = Invoke-WebRequest -Uri $loc -UseBasicParsing -TimeoutSec 30
    [pscustomobject]@{
      Url = $loc
      StatusCode = [int]$response.StatusCode
      HasAmazonStatement = ([string]$response.Content).Contains('As an Amazon Associate I earn from qualifying purchases.')
      HasContactEmail = if ($loc.TrimEnd('/') -eq "$baseUrl/contact") { ([string]$response.Content).Contains($ContactEmail) } else { $null }
    }
  } catch {
    [pscustomobject]@{
      Url = $loc
      StatusCode = 0
      HasAmazonStatement = $false
      HasContactEmail = if ($loc.TrimEnd('/') -eq "$baseUrl/contact") { $false } else { $null }
    }
  }
}

$badStatus = @($urlResults | Where-Object { $_.StatusCode -ne 200 })
foreach ($item in $badStatus) {
  Add-Error "URL returned HTTP $($item.StatusCode): $($item.Url)"
}

$missingAmazonStatement = @($urlResults | Where-Object { -not $_.HasAmazonStatement })
if ($missingAmazonStatement.Count -gt 0) {
  Add-Error "Some pages are missing the Amazon Associate footer statement: $($missingAmazonStatement.Url -join ', ')."
}

$contactResult = $urlResults | Where-Object { $_.Url.TrimEnd('/') -eq "$baseUrl/contact" } | Select-Object -First 1
if (-not $contactResult -or -not $contactResult.HasContactEmail) {
  Add-Error "Contact page does not contain $ContactEmail."
}

if ($errors.Count -gt 0) {
  $errors | ForEach-Object { Write-Error $_ }
  exit 1
}

[pscustomobject]@{
  Status = 'passed'
  PublicUrl = $baseUrl
  RobotsUrl = $robotsUrl
  SitemapUrl = $sitemapUrl
  SitemapUrls = $locs.Count
  UrlsChecked = $urlResults.Count
  RequiredStatuses = 'all 200'
  ContactEmailPresent = [bool]$contactResult.HasContactEmail
  AmazonStatementPresentOnAllPages = $true
}
