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
| Evidence rows | 28 |
| Amazon affiliate links detected | 0 |
| Potential manual Amazon data mentions | 0 |
| Amazon statement present | True |
| Placeholder email present | False |
| Search Console still needed | True |
| Amazon application recommended now | False |

## Interpretation

Local content, compliance scaffolding, and evidence planning are ready. The compact-air-fryer money page has first-pass official-source evidence for 6 candidates: 5 source-documented candidates and 1 hold candidate with missing official dimensions. The dish-drying-rack money page has first-pass evidence for 7 candidates across foldaway, roll-up, over-sink, slim expandable, compact counter, and budget/in-sink styles. The small-coffee-maker money page has first-pass evidence for 7 candidates across drip, pod, pod-free single-serve, manual, capsule, and compact espresso styles. The compact-rice-cooker money page now has first-pass evidence for 7 candidates across simple one-switch, micom, mini, digital grain, and compact multi-function styles. Do not apply to Amazon Associates yet because Search Console has not been submitted and product evidence is still incomplete for the remaining first money page.

## Next Actions

1. Complete Search Console Day 0 setup.
2. Extract exact Instant Pot and Ninja manual clearance notes before publishing the compact air fryer money page.
3. Confirm current availability and Amazon US eligibility for dish rack finalists after Associates approval.
4. Extract Keurig K-Mini cleaning/descaling support details before publishing the small coffee maker money page.
5. Extract exact Aroma and GreenLife cleaning/dishwasher guidance before publishing the compact rice cooker money page.
6. Collect product evidence for the remaining first-wave money page: sink organizers.
7. Run `scripts\audit-affiliate-readiness.ps1` again.
8. Do a final live-site compliance review.
9. Apply to Amazon Associates only after the above is complete.
