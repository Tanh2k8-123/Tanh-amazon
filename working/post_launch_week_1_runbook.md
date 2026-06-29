# Post-Launch Week 1 Runbook

Use this after the site is publicly deployed and the final URL is known.

Last updated: 2026-06-28

Public URL:

```text
https://tanhs-compact-kitchen.pages.dev
```

## Current 34-URL Re-Launch Gate

Use this before Search Console submission because the Cloudflare Pages deploy is not live yet.

- [ ] Deploy latest source or `working/deploy/tanhs-compact-kitchen-site.zip` to Cloudflare Pages.
- [ ] Run `scripts\verify-static-site.ps1`.
- [ ] Run `scripts\launch-status.ps1 -CheckPublic -ExpectedPublicSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"` and confirm `PublicDeployGatePassed` is `True`.
- [ ] Run `scripts\verify-public-site.ps1 -ExpectedSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"`.
- [ ] Confirm `/best/compact-rice-cookers-two-people/` returns 200 publicly.
- [ ] Confirm `/best/sink-organizers-small-kitchens/` returns 200 publicly.
- [ ] Only then continue to Search Console sitemap submission.

## Day 0 - Finalize Launch Files

- [x] Run `scripts/prepare-launch.ps1` with final URL and public email.
- [x] Run `scripts/verify-static-site.ps1`.
- [x] Confirm `hello@example.com` is gone.
- [x] Confirm `site/robots.txt` points to final sitemap URL.
- [x] Confirm every `site/sitemap.xml` URL uses the final public URL.
- [ ] Deploy updated `site/` through Cloudflare Pages.
- [ ] Connect Cloudflare Pages to GitHub for automatic production deploys.
- [x] Run `scripts/verify-public-site.ps1` against the public URL.

## Day 1 - Verify Live Site

- [x] Open homepage on desktop and mobile.
- [x] Open About, Contact, Privacy Policy, Affiliate Disclosure.
- [x] Open Guides hub.
- [x] Open 5 important content pages.
- [x] Confirm HTTPS.
- [x] Confirm no affiliate links are present yet.
- [x] Confirm footer disclosure appears.

## Day 1 - Search Console

- [x] Prepare `working/search_console_day0_checklist.md`.
- [x] Prepare `working/tracking/indexing_tracker.csv` with all 29 public URLs.
- [ ] Add URL-prefix property.
- [ ] Verify ownership.
- [ ] Submit sitemap after the 34-URL public verification gate passes.
- [ ] Inspect homepage.
- [ ] Inspect Guides hub.
- [ ] Inspect first 5 priority articles.

## Day 2 - Internal Link Pass

- [ ] Add or confirm links from homepage to top guides.
- [ ] Add or confirm links from Guides hub to all guide pages.
- [ ] Add 3 relevant internal links to each priority page when editing becomes practical.

## Day 3 - Social Profiles Placeholder

Only create channels Tanh can maintain.

- [ ] Choose one social channel, not all channels.
- [ ] Suggested first channel: YouTube Shorts or Pinterest-style visual posts.
- [ ] Add social links to the site only after the account exists.

## Day 4 - First Content Update

Pick one source-ready page and improve it with:

- [ ] More concrete examples.
- [ ] Better internal links.
- [ ] Clear `best for` and `skip if` section if relevant.
- [ ] No product claims that need unsupported evidence.

## Day 5 - Product Evidence Planning

Prepare evidence sheets for first money pages:

- [ ] Compact air fryers.
- [ ] Dish racks.
- [ ] Small coffee makers.

Do not add Amazon product images, prices, ratings, or review snippets manually.

## Day 7 - First Weekly Report

- [ ] Update `working/tracking/weekly_report_001.md` or create Week 2 report.
- [ ] Record whether pages are discovered/indexed.
- [ ] Record any Search Console impressions.
- [ ] Choose 3 actions for next week.
