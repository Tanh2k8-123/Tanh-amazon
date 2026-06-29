param(
  [Parameter(Mandatory = $true)]
  [ValidatePattern('^[a-z0-9][a-z0-9-]{1,62}[a-z0-9]$')]
  [string]$ProjectName,

  [Parameter(Mandatory = $true)]
  [ValidatePattern('^[^@\s]+@[^@\s]+\.[^@\s]+$')]
  [string]$ContactEmail,

  [string]$SiteDir = 'site',
  [string]$ZipPath = 'working/deploy/tanhs-compact-kitchen-site.zip'
)

$ErrorActionPreference = 'Stop'

$publicUrl = "https://$ProjectName.pages.dev"
$prepareScript = Join-Path $PSScriptRoot 'prepare-launch.ps1'
$verifyScript = Join-Path $PSScriptRoot 'verify-static-site.ps1'

& $prepareScript -PublicUrl $publicUrl -ContactEmail $ContactEmail -SiteDir $SiteDir -ZipPath $ZipPath
& $verifyScript -SiteDir $SiteDir

[pscustomobject]@{
  CloudflarePagesProject = $ProjectName
  PublicUrl = $publicUrl
  PublishDirectory = $SiteDir
  BuildCommand = '(empty)'
  NextStep = 'Create or connect this Cloudflare Pages project, then deploy the site directory or GitHub main branch.'
}
