# Search Console And Analytics Setup Packet

Last updated: 2026-06-23

Purpose: make the post-launch Search Console and analytics setup repeatable for the public site.

## Current Decision

Search Console is the next external setup step.

The site is live at:

```text
https://tanhamazon.netlify.app
```

Current local/public content status: 20/20 logged content pages are `Source-ready`; public verification passes for 29 sitemap URLs.

## Inputs Needed

- Google account for Search Console.
- Host dashboard access for verification if needed.
- Decision on analytics:
  - Search Console only at launch, recommended lean-first.
  - GA4 later if Tanh wants engagement data and privacy policy is updated to match.

## Recommended Search Console Property

Use a URL-prefix property:

```text
https://tanhamazon.netlify.app/
```

If a custom domain is purchased later, add a Domain property for the root domain.

## Verification Options

Preferred:

1. HTML file upload if the host makes it easy.
2. HTML meta tag in `site/index.html`.
3. DNS verification after buying a custom domain.

Lean-first note: for a free Netlify/Cloudflare subdomain, URL-prefix verification is usually the fastest.

## Sitemap Submission

Submit:

```text
https://tanhamazon.netlify.app/sitemap.xml
```

Before submitting, run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-static-site.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhamazon.netlify.app" -ContactEmail "dotuananh20082006@gmail.com"
```

The verify script should pass without `-AllowLaunchPlaceholders`.

## First URL Inspection Batch

After sitemap submission, inspect these URLs:

1. `/`
2. `/guides/`
3. `/guides/small-kitchen-appliance-buying-guide/`
4. `/guides/how-to-choose-air-fryer-size-two-people/`
5. `/comparisons/compact-air-fryer-vs-toaster-oven/`
6. `/guides/what-kitchen-appliances-do-i-need/`
7. `/affiliate-disclosure/`

## Weekly Search Console Routine

Every Monday:

1. Open Performance.
2. Set date range to last 7 days and compare to previous period.
3. Record total clicks, impressions, CTR, and average position.
4. Export top queries by impressions.
5. Export top pages by clicks.
6. Check Indexing > Pages for errors or excluded pages.
7. Pick 3 next actions:
   - rewrite title/meta,
   - add internal links,
   - expand a section,
   - create a new supporting article,
   - request indexing for important pages.

## GA4 Recommendation

Start without GA4 if the goal is zero-budget and simple SEO validation.

Add GA4 only after:

- Public URL is stable.
- Privacy Policy is updated to mention analytics cookies/events.
- Tanh wants engagement metrics beyond Search Console.

If GA4 is added, track only basic page views at first. Avoid ad personalization and advanced tracking until privacy language and consent approach are reviewed.

## Tracking Files

Use:

- `working/tracking/search_console_weekly_kpi.csv`
- `working/tracking/indexing_tracker.csv`
- `working/tracking/content_log.csv`
- `working/search_console_day0_checklist.md`

## Official References

- Google Search Console overview: https://developers.google.com/search/docs/monitor-debug/search-console-start
- Google sitemap overview: https://developers.google.com/search/docs/crawling-indexing/sitemaps/overview
- Google Sitemaps report: https://support.google.com/webmasters/answer/7451001
- Google URL Inspection tool: https://support.google.com/webmasters/answer/9012289
- Google request recrawl guidance: https://developers.google.com/search/docs/crawling-indexing/ask-google-to-recrawl

## First 30-Day KPI Targets

| KPI | Target |
| --- | --- |
| Sitemap submitted | Day 1 after deploy |
| Important URLs inspected | First 7 days |
| Indexed pages | 50%+ by day 30, if crawl speed allows |
| Weekly reports | 4/4 |
| GSC-driven updates | 2+ by day 30 |
