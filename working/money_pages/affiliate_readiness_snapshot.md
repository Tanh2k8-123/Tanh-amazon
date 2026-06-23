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
| Evidence rows | 5 |
| Amazon affiliate links detected | 0 |
| Potential manual Amazon data mentions | 0 |
| Amazon statement present | True |
| Placeholder email present | False |
| Search Console still needed | True |
| Amazon application recommended now | False |

## Interpretation

Local content, compliance scaffolding, and evidence planning are ready. Do not apply to Amazon Associates yet because Search Console has not been submitted and real product evidence has not been collected for the first money pages.

## Next Actions

1. Complete Search Console Day 0 setup.
2. Collect product evidence for the first 3 money pages.
3. Run `scripts\audit-affiliate-readiness.ps1` again.
4. Do a final live-site compliance review.
5. Apply to Amazon Associates only after the above is complete.
