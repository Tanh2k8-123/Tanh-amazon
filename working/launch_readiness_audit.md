# Launch Readiness Audit

Last updated: 2026-06-23

## Current Status

| Area | Status | Evidence |
| --- | --- | --- |
| Static site source | Ready locally | `site/` contains 29 HTML files. |
| Deploy ZIP | Ready locally | `working/deploy/tanhs-compact-kitchen-site.zip` exists. |
| Required pages | Ready locally | About, Contact, Privacy Policy, Affiliate Disclosure all exist. |
| Content inventory | Ready locally | 20 non-affiliate content pages are logged; all 20 are marked `Source-ready` by the latest content audit. |
| Sitemap | Ready live | `site/sitemap.xml` contains 29 HTTPS URLs using `https://tanhamazon.netlify.app`. |
| Robots | Ready live | `site/robots.txt` points to `https://tanhamazon.netlify.app/sitemap.xml`. |
| Compliance | Ready for non-affiliate launch | No affiliate links; disclosure page and footer statement exist. |
| Amazon application packet | Ready locally | `working/amazon_associates_application_packet.md` exists. |
| Search Console packet | Ready locally | `working/search_console_setup_packet.md` exists. |
| Post-launch runbook | Ready locally | `working/post_launch_week_1_runbook.md` exists. |
| Content audit | Ready locally | `working/audits/content_inventory.csv` and `working/audits/content_improvement_priorities.md` exist. |
| Launch handoff | Ready locally | `working/deploy/LAUNCH_HANDOFF.md` exists. |
| Launch status script | Ready locally | `scripts/launch-status.ps1` reports the remaining launch blockers. |
| GitHub repository | Ready | Pushed to `https://github.com/Tanh2k8-123/Tanh-amazon` on branch `main`. |
| Contact email | Ready locally | `site/contact/index.html` uses `dotuananh20082006@gmail.com`. |
| Public deploy | Live | `https://tanhamazon.netlify.app` is reachable over HTTPS. |
| Public verification | Passed | `scripts/verify-public-site.ps1` checked 29 sitemap URLs, contact email, and footer disclosure. |
| Search Console | Ready for user account step | Create URL-prefix property and submit `https://tanhamazon.netlify.app/sitemap.xml`. |
| Amazon Associates | Not started intentionally | Should wait until public site is live and reviewed. |

## Maintenance Commands

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\prepare-launch.ps1 -PublicUrl "https://final-public-url" -ContactEmail "dotuananh20082006@gmail.com"
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-static-site.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhamazon.netlify.app" -ContactEmail "dotuananh20082006@gmail.com"
```

## Input Still Needed From Tanh

1. Google account access for Search Console.
2. Search Console verification method if Google does not verify automatically through Netlify/GitHub.

## Definition Of Launch Done

- Placeholder email removed from `site/contact/index.html`.
- `site/sitemap.xml` and `site/robots.txt` use the final public URL.
- `scripts/verify-static-site.ps1` passes without `-AllowLaunchPlaceholders`.
- Site is publicly reachable over HTTPS.
- `scripts/verify-public-site.ps1` passes on the public URL.
- Amazon Associates has not been applied for until the public site is stable.

## Packets Ready For Next Phase

- `working/amazon_associates_application_packet.md`
- `working/search_console_setup_packet.md`
- `working/search_console_day0_checklist.md`
- `working/post_launch_week_1_runbook.md`
- `working/tracking/search_console_weekly_kpi.csv`
- `working/tracking/indexing_tracker.csv`
- `working/audits/content_inventory.csv`
- `working/audits/content_improvement_priorities.md`
- `working/deploy/LAUNCH_HANDOFF.md`
- `working/public_launch_verification.md`

## Search Console Next

- Create URL-prefix property: `https://tanhamazon.netlify.app/`
- Submit sitemap: `https://tanhamazon.netlify.app/sitemap.xml`
- Inspect the first priority URLs in `working/search_console_setup_packet.md`.
- Use `working/search_console_day0_checklist.md` as the click-by-click checklist.

## Content Audit Snapshot

- 20 logged content pages are currently marked `Source-ready` by `scripts/audit-content.ps1`.
- 0 shorter supporting pages need expansion before heavy promotion.
- 0 logged content pages are missing article-body internal links under the current audit rules.
