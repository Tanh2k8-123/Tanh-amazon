# Affiliate Readiness Snapshot

Last updated: 2026-06-23

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
| Evidence rows source-documented | 25 |
| Evidence rows needing official verification | 4 |
| Evidence rows on hold | 5 |
| Amazon affiliate links detected | 0 |
| Potential manual Amazon data mentions | 0 |
| Amazon statement present | True |
| Placeholder email present | False |
| Search Console still needed | True |
| Amazon application recommended now | False |

## Interpretation

Local content, compliance scaffolding, and evidence planning are ready. Across the first-wave money pages, the tracker now has 34 product-evidence rows: 25 source-documented, 4 needing official verification, and 5 on hold. The compact-air-fryer, dish-drying-rack, small-coffee-maker, compact-rice-cooker, and sink-organizer pages all have first-pass candidate evidence. Do not apply to Amazon Associates yet because Search Console has not been submitted and several candidate pages still need final official/retailer verification before publication.

## Next Actions

1. Complete Search Console Day 0 setup.
2. Extract exact Instant Pot and Ninja manual clearance notes before publishing the compact air fryer money page.
3. Confirm current availability and Amazon US eligibility for dish rack finalists after Associates approval.
4. Extract Keurig K-Mini cleaning/descaling support details before publishing the small coffee maker money page.
5. Extract exact Aroma and GreenLife cleaning/dishwasher guidance before publishing the compact rice cooker money page.
6. Replace remaining public testing sources with official or retailer sources for OXO, simplehuman, and Joseph Joseph sink organizer candidates before publishing.
7. Run `scripts\audit-affiliate-readiness.ps1` again.
8. Do a final live-site compliance review.
9. Apply to Amazon Associates only after the above is complete.
