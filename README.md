# Tanh's Compact Kitchen Notes

Static-site foundation and operating system for a zero-budget Amazon Affiliate project in the Home/Kitchen niche.

## Project direction

- Brand: `Tanh's Compact Kitchen Notes`
- Owner voice: `Tanh Corleone`
- Market: Amazon US
- Niche: Home/Kitchen
- Sub-niche: compact kitchen gear for apartments and small homes
- Hosting target: Netlify Free or Cloudflare Pages Free
- Budget: 0 USD initially

## Important folders

| Path | Purpose |
| --- | --- |
| `site/` | Deployable static website |
| `working/` | Research, tracking, briefs, QA, deployment artifacts |
| `working/content_briefs/` | Content briefs for the first content backlog |
| `working/tracking/` | CSV/Markdown tracking files |
| `working/qa/` | QA report and local screenshots |
| `working/deploy/` | Deploy ZIP generated from `site/` |
| `working/money_pages/` | Evidence planning for future buyer-intent affiliate pages |
| `scripts/` | Launch preparation and static-site verification scripts |

## Current launch state

- 29 HTML pages in `site/`
- 20 source-ready non-affiliate content pages
- Required pages: About, Contact, Privacy Policy, Affiliate Disclosure
- Sitemap and robots file included
- Public URL: `https://tanhamazon.netlify.app`
- 66 keyword candidates
- 30 product candidates
- 20 content briefs
- Compliance source audit: `working/compliance_source_audit_2026-06-22.md`
- Launch/content scripts: `scripts/prepare-launch.ps1`, `scripts/verify-static-site.ps1`, `scripts/verify-public-site.ps1`, `scripts/audit-content.ps1`
- Launch status script: `scripts/launch-status.ps1`
- Amazon application packet: `working/amazon_associates_application_packet.md`
- Search Console packet: `working/search_console_setup_packet.md`
- Search Console day 0 checklist: `working/search_console_day0_checklist.md`
- Post-launch week 1 runbook: `working/post_launch_week_1_runbook.md`
- Launch handoff: `working/deploy/LAUNCH_HANDOFF.md`
- Public launch verification: `working/public_launch_verification.md`
- Money page SOP: `working/money_pages/MONEY_PAGE_SOP.md`
- Affiliate readiness snapshot: `working/money_pages/affiliate_readiness_snapshot.md`
- Content audit outputs: `working/audits/content_inventory.csv`, `working/audits/content_improvement_priorities.md`
- No Amazon affiliate links yet

## Public launch state

- Public Netlify deployment is live.
- Contact email is set to `dotuananh20082006@gmail.com`.
- `robots.txt` and `sitemap.xml` use `https://tanhamazon.netlify.app`.
- Public verification passes for all 29 sitemap URLs.
- Next external step: connect Google Search Console and submit the sitemap.

Quick status check:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1
```

For the exact handoff steps, use `working/deploy/LAUNCH_HANDOFF.md`.

## Do not do yet

- Do not apply for Amazon Associates until Search Console is set up and the live site has had a final compliance review.
- Do not add Amazon product images, prices, ratings, or review excerpts manually.
- Do not use Vercel Hobby for production affiliate hosting.
