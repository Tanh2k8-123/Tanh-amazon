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
| Evidence rows | 10 |
| Amazon affiliate links detected | 0 |
| Potential manual Amazon data mentions | 0 |
| Amazon statement present | True |
| Placeholder email present | False |
| Search Console still needed | True |
| Amazon application recommended now | False |

## Interpretation

Local content, compliance scaffolding, and evidence planning are ready. The compact-air-fryer money page now has first-pass official-source evidence for 6 candidates: 5 source-documented candidates and 1 hold candidate with missing official dimensions. Do not apply to Amazon Associates yet because Search Console has not been submitted and product evidence is still incomplete for the remaining first money pages.

## Next Actions

1. Complete Search Console Day 0 setup.
2. Extract exact Instant Pot and Ninja manual clearance notes before publishing the compact air fryer money page.
3. Collect product evidence for the next first-wave money pages: dish drying racks, small coffee makers, rice cookers, and sink organizers.
4. Run `scripts\audit-affiliate-readiness.ps1` again.
5. Do a final live-site compliance review.
6. Apply to Amazon Associates only after the above is complete.
