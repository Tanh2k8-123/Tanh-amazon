# Affiliate Readiness Snapshot

Last updated: 2026-06-24

Command:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\audit-affiliate-readiness.ps1
```

## Latest Result

| Metric | Value |
| --- | --- |
| Status | `pre-application-ready-except-external-steps` |
| HTML files | 29 |
| Content pages | 20 |
| Source-ready content pages | 20 |
| Money pages planned | 5 |
| Evidence rows | 34 |
| Evidence rows source-documented | 29 |
| Evidence rows needing official verification | 0 |
| Evidence rows on hold | 5 |
| Amazon affiliate links detected | 0 |
| Potential manual Amazon data mentions | 0 |
| Amazon statement present | True |
| Placeholder email present | False |
| Search Console still needed | True |
| Amazon application recommended now | False |

## Interpretation

Local content, compliance scaffolding, and evidence planning are ready. Across the first-wave money pages, the tracker now has 34 product-evidence rows: 29 source-documented, none needing official verification, and 5 intentionally on hold for availability or missing dimensions. The compact-air-fryer, dish-drying-rack, small-coffee-maker, compact-rice-cooker, and sink-organizer pages all have first-pass candidate evidence. Instant Pot and Ninja operating-clearance guidance is documented from official manuals; Ninja's current manual provides qualitative guidance rather than a numeric distance. The Keurig K-Mini has model-specific official evidence for dimensions, one-cup reservoir workflow, cleaning, needle care, and descaling. The remaining OXO and simplehuman sink-organizer candidates now use corrected official product pages and retailer specifications. Do not apply to Amazon Associates yet because Search Console has not been submitted and current availability still needs a final check immediately before money-page publication.

## Next Actions

1. Complete Search Console Day 0 setup.
2. Confirm current availability and Amazon US eligibility for dish rack finalists after Associates approval.
3. Confirm current availability from allowed sources immediately before drafting money pages.
4. Run `scripts\audit-affiliate-readiness.ps1` again.
5. Do a final live-site compliance review.
6. Apply to Amazon Associates only after the above is complete.
