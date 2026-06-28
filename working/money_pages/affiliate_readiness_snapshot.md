# Affiliate Readiness Snapshot

Last updated: 2026-06-28

Command:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\audit-affiliate-readiness.ps1
```

## Latest Result

| Metric | Value |
| --- | --- |
| Status | `pre-application-ready-except-external-steps` |
| HTML files | 31 |
| Content pages | 22 |
| Source-ready content pages | 22 |
| Money pages planned | 5 |
| Evidence rows | 34 |
| Evidence rows source-documented | 27 |
| Evidence rows needing official verification | 0 |
| Evidence rows on hold | 7 |
| Amazon affiliate links detected | 0 |
| Potential manual Amazon data mentions | 0 |
| Amazon statement present | True |
| Placeholder email present | False |
| Search Console still needed | True |
| Amazon application recommended now | False |

## Interpretation

Local content, compliance scaffolding, and evidence planning are ready. The source site now includes 22 non-affiliate content pages, including two documentation-based money pages: `/best/compact-air-fryers-small-kitchens/` and `/best/dish-drying-racks-small-kitchens/`. Across the first-wave money pages, the tracker has 34 product-evidence rows: 27 source-documented, none needing official verification, and 7 intentionally on hold for availability or missing dimensions. The compact-air-fryer, dish-drying-rack, small-coffee-maker, compact-rice-cooker, and sink-organizer pages all have first-pass candidate evidence. The compact-air-fryer page currently treats Instant Pot 4QT VORTEX Mini and Chefman Compact 2-Quart as current picks, with COSORI, Dash, Ninja, and Beautiful on watchlist/hold based on 2026-06-28 manufacturer availability and documentation checks. The dish-drying-rack page currently treats OXO Foldaway, Kraus Roll-Up, and simplehuman Compact Steel Frame as current picks, keeps Joseph Joseph Extend Slim as an availability re-check finalist, and keeps Umbra, Rubbermaid, and Yamazaki on watchlist/hold based on 2026-06-28 manufacturer availability signals. Do not apply to Amazon Associates yet because Search Console has not been submitted and the public Netlify project still needs Git-based deployment verification.

## Next Actions

1. Connect the existing Netlify project to GitHub or upload the latest deploy ZIP so commit output reaches the public site.
2. Complete Search Console Day 0 setup.
3. Confirm current availability and Amazon US eligibility for remaining finalists after Associates approval.
4. Confirm current availability from allowed sources immediately before each future money-page publication.
5. Run `scripts\audit-affiliate-readiness.ps1` again after live deployment/Search Console setup.
6. Apply to Amazon Associates only after the above is complete.
