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
| Evidence rows source-documented | 26 |
| Evidence rows needing official verification | 3 |
| Evidence rows on hold | 5 |
| Amazon affiliate links detected | 0 |
| Potential manual Amazon data mentions | 0 |
| Amazon statement present | True |
| Placeholder email present | False |
| Search Console still needed | True |
| Amazon application recommended now | False |

## Interpretation

Local content, compliance scaffolding, and evidence planning are ready. Across the first-wave money pages, the tracker now has 34 product-evidence rows: 26 source-documented, 3 needing official verification, and 5 on hold. The compact-air-fryer, dish-drying-rack, small-coffee-maker, compact-rice-cooker, and sink-organizer pages all have first-pass candidate evidence. Instant Pot and Ninja operating-clearance guidance is now documented from official manuals; Ninja's current manual provides qualitative guidance rather than a numeric distance. Do not apply to Amazon Associates yet because Search Console has not been submitted and several candidate pages still need final official/retailer verification before publication.

## Next Actions

1. Complete Search Console Day 0 setup.
2. Confirm current availability and Amazon US eligibility for dish rack finalists after Associates approval.
3. Extract Keurig K-Mini cleaning/descaling support details before publishing the small coffee maker money page.
4. Replace remaining public testing sources with official or retailer sources for OXO and simplehuman sink organizer candidates before publishing.
5. Confirm current availability from allowed sources immediately before drafting money pages.
6. Run `scripts\audit-affiliate-readiness.ps1` again.
7. Do a final live-site compliance review.
8. Apply to Amazon Associates only after the above is complete.
