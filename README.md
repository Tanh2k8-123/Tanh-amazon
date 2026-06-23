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
| `scripts/` | Launch preparation and static-site verification scripts |

## Current launch state

- 29 HTML pages in `site/`
- 20 source-ready non-affiliate content pages
- Required pages: About, Contact, Privacy Policy, Affiliate Disclosure
- Sitemap and robots file included
- 66 keyword candidates
- 30 product candidates
- 20 content briefs
- Compliance source audit: `working/compliance_source_audit_2026-06-22.md`
- Launch/content scripts: `scripts/prepare-launch.ps1`, `scripts/verify-static-site.ps1`, `scripts/audit-content.ps1`
- Launch status script: `scripts/launch-status.ps1`
- Amazon application packet: `working/amazon_associates_application_packet.md`
- Search Console packet: `working/search_console_setup_packet.md`
- Post-launch week 1 runbook: `working/post_launch_week_1_runbook.md`
- Launch handoff: `working/deploy/LAUNCH_HANDOFF.md`
- Content audit outputs: `working/audits/content_inventory.csv`, `working/audits/content_improvement_priorities.md`
- No Amazon affiliate links yet

## Before public launch

1. Pick Netlify Free or Cloudflare Pages Free.
2. Run `scripts/prepare-launch.ps1` with the final public URL and contact email.
   - Current contact email: `dotuananh20082006@gmail.com`
4. Deploy the `site/` folder or `working/deploy/tanhs-compact-kitchen-site.zip`.
5. Connect Google Search Console and submit the sitemap.

Quick status check:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1
```

For the exact handoff steps, use `working/deploy/LAUNCH_HANDOFF.md`.

## Do not do yet

- Do not apply for Amazon Associates until the site is public and has enough original content.
- Do not add Amazon product images, prices, ratings, or review excerpts manually.
- Do not use Vercel Hobby for production affiliate hosting.
