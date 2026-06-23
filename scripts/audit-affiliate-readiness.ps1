param(
  [string]$SiteDir = 'site',
  [string]$ContentInventoryPath = 'working/audits/content_inventory.csv',
  [string]$MoneyPagePipelinePath = 'working/money_pages/money_page_pipeline.csv',
  [string]$EvidenceTrackerPath = 'working/money_pages/evidence/product_evidence_tracker.csv'
)

$ErrorActionPreference = 'Stop'

$root = Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')
$sitePath = Resolve-Path -LiteralPath (Join-Path $root $SiteDir)
$inventoryFullPath = Join-Path $root $ContentInventoryPath
$pipelineFullPath = Join-Path $root $MoneyPagePipelinePath
$evidenceFullPath = Join-Path $root $EvidenceTrackerPath

$htmlFiles = @(Get-ChildItem -LiteralPath $sitePath -Recurse -Filter *.html -File)
$sourceText = ($htmlFiles | ForEach-Object { Get-Content -LiteralPath $_.FullName -Raw }) -join "`n"
$contentHtmlFiles = @(
  $htmlFiles | Where-Object {
    $_.FullName -notmatch '\\(affiliate-disclosure|privacy-policy)\\index\.html$'
  }
)
$contentSourceText = ($contentHtmlFiles | ForEach-Object { Get-Content -LiteralPath $_.FullName -Raw }) -join "`n"

$inventoryRows = if (Test-Path -LiteralPath $inventoryFullPath) { @(Import-Csv -LiteralPath $inventoryFullPath) } else { @() }
$pipelineRows = if (Test-Path -LiteralPath $pipelineFullPath) { @(Import-Csv -LiteralPath $pipelineFullPath) } else { @() }
$evidenceRows = if (Test-Path -LiteralPath $evidenceFullPath) { @(Import-Csv -LiteralPath $evidenceFullPath) } else { @() }

$contentRows = @($inventoryRows | Where-Object { $_.InContentLog -eq 'Yes' })
$sourceReadyRows = @($contentRows | Where-Object { $_.Priority -eq 'Source-ready' })
$affiliateUrlMatches = @([regex]::Matches($sourceText, 'https?://(?:www\.)?amazon\.[^"''\s<]+|tag=[^"''&\s<]+', 'IgnoreCase'))
$manualAmazonDataMatches = @([regex]::Matches($contentSourceText, 'star rating|customer review|list price|current price|Amazon rating', 'IgnoreCase'))
$hasAmazonStatement = $sourceText.Contains('As an Amazon Associate I earn from qualifying purchases.')
$hasPlaceholderEmail = $sourceText -match 'hello@example\.com'

$readinessNotes = New-Object System.Collections.Generic.List[string]
if ($sourceReadyRows.Count -lt 10) {
  $readinessNotes.Add('Need at least 10 source-ready content pages before applying.')
}
if ($hasPlaceholderEmail) {
  $readinessNotes.Add('Placeholder contact email is still present.')
}
if (-not $hasAmazonStatement) {
  $readinessNotes.Add('Amazon Associate footer statement is missing.')
}
if ($affiliateUrlMatches.Count -gt 0) {
  $readinessNotes.Add('Amazon/affiliate-looking links already exist; audit disclosure and link log before applying.')
}
if ($manualAmazonDataMatches.Count -gt 0) {
  $readinessNotes.Add('Potential manually copied Amazon data language found; review before publishing affiliate pages.')
}
if ($pipelineRows.Count -lt 5) {
  $readinessNotes.Add('Money page pipeline should include at least 5 planned buyer-intent pages.')
}
if ($evidenceRows.Count -lt 5) {
  $readinessNotes.Add('Evidence tracker should include rows for the first money pages.')
}

$searchConsoleStillNeeded = $true
$applicationRecommended = $false

[pscustomobject]@{
  Status = if ($readinessNotes.Count -eq 0) { 'pre-application-ready-except-external-steps' } else { 'needs-review' }
  HtmlFiles = $htmlFiles.Count
  ContentPages = $contentRows.Count
  SourceReadyContentPages = $sourceReadyRows.Count
  MoneyPagesPlanned = $pipelineRows.Count
  EvidenceRows = $evidenceRows.Count
  AmazonAffiliateLinksDetected = $affiliateUrlMatches.Count
  PotentialManualAmazonDataMentions = $manualAmazonDataMatches.Count
  AmazonStatementPresent = $hasAmazonStatement
  PlaceholderEmailPresent = $hasPlaceholderEmail
  SearchConsoleStillNeeded = $searchConsoleStillNeeded
  AmazonApplicationRecommendedNow = $applicationRecommended
  Notes = if ($readinessNotes.Count -eq 0) {
    'Local content/evidence planning is ready. Still complete Search Console submission and final compliance review before applying.'
  } else {
    ($readinessNotes -join ' | ')
  }
}
