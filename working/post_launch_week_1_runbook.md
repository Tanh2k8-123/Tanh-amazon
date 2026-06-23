# Post-Launch Week 1 Runbook

Use this after the site is publicly deployed and the final URL is known.

Public URL:

```text
https://tanhamazon.netlify.app
```

## Day 0 - Finalize Launch Files

- [x] Run `scripts/prepare-launch.ps1` with final URL and public email.
- [x] Run `scripts/verify-static-site.ps1`.
- [x] Confirm `hello@example.com` is gone.
- [x] Confirm `site/robots.txt` points to final sitemap URL.
- [x] Confirm every `site/sitemap.xml` URL uses the final public URL.
- [x] Deploy updated `site/` through Netlify/GitHub.
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

- [ ] Add URL-prefix property.
- [ ] Verify ownership.
- [ ] Submit sitemap.
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
