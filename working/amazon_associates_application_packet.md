# Amazon Associates Application Packet

Last updated: 2026-06-28

Purpose: prepare the exact information Tanh will need when the site is public enough to apply for Amazon Associates US.

## Current Decision

Do not apply yet.

Reason:

- Search Console is not connected yet.
- Latest 34-URL source is not deployed to Netlify yet; the public sitemap still has 29 URLs.
- There are no affiliate links yet, which is intentional.
- Product evidence has been collected for the first five money pages, but affiliate links are still intentionally absent.

Apply only after latest source is deployed, Search Console is submitted, the live site has had a final compliance review, and the first money pages are publicly reachable.

## Application Readiness Checklist

- [x] Final public URL exists.
- [x] Contact email is real and public.
- [x] About page is live.
- [x] Contact page is live.
- [x] Privacy Policy page is live.
- [x] Affiliate Disclosure page is live.
- [x] Footer includes: `As an Amazon Associate I earn from qualifying purchases.`
- [x] 10+ original content pages are live and reachable.
- [ ] Latest 34-URL source deployment is live and verified.
- [ ] Sitemap is submitted in Search Console.
- [x] No copied Amazon product images, prices, star ratings, or customer review text.
- [x] Traffic plan is written even if traffic is still early.
- [x] 180-day plan is ready.
- [x] Money-page evidence templates are ready.
- [x] Product evidence has been collected for first money pages.
- [ ] `scripts/audit-affiliate-readiness.ps1` has been run after Search Console setup.

## Application Fields

### Website URL

Use the final HTTPS URL only.

```text
https://tanhamazon.netlify.app
```

### Store ID / Tracking ID Idea

Amazon may ask for a preferred store ID. Keep it short, brand-related, and not using Amazon trademarks.

```text
tancompact-20
```

Backup ideas:

```text
tanhsnotes-20
compactnote-20
```

### Site Description

Use this English description:

```text
Tanh's Compact Kitchen Notes publishes practical buying guides, product comparisons, and how-to articles for people setting up small kitchens, apartments, and compact homes. The site helps readers compare kitchen appliances, organization tools, coffee gear, and cleaning products based on space constraints, usability, maintenance, cleaning, storage, and value.
```

### Topics / Categories

Use:

- Home
- Kitchen
- Home Improvement
- Coffee gear
- Cleaning and organization

### Traffic Sources

Use:

```text
The initial traffic plan is SEO-first. The site will use Google Search Console to monitor impressions, clicks, indexing, and page opportunities. Supporting traffic may come from organic YouTube videos, Pinterest-style visual posts, and social posts that link to the website. The site does not plan to run paid ads directly to Amazon.
```

### How Products Are Selected

Use:

```text
Products are selected by matching reader problems to practical criteria such as footprint, capacity, cleaning effort, storage fit, use case, durability signals, manufacturer specifications, and available product documentation. The site avoids manually copying Amazon prices, ratings, customer reviews, or product images. Recommendations are updated when better evidence, testing notes, or product availability changes.
```

### Monetization Statement

Use:

```text
The site may earn commissions through Amazon Associates links when readers choose to buy through qualifying links. Affiliate relationships do not determine whether a product is recommended; each recommendation must include clear disclosure and practical pros, cons, best-for, and skip-if guidance.
```

## First Affiliate Pages To Consider After Approval

These pages exist as non-affiliate source pages after evidence collection. Do not add affiliate links until approval, live deploy verification, and Task 16 link logging/disclosure workflow are complete.

| Priority | Page idea | Current status |
| --- | --- | --- |
| 1 | Best compact air fryers for small kitchens | Source-ready, no affiliate links. |
| 2 | Best dish drying racks for small kitchens | Source-ready, no affiliate links. |
| 3 | Best small coffee makers for apartments | Source-ready, no affiliate links. |
| 4 | Best compact rice cookers for two people | Source-ready, pending public Netlify deploy. |
| 5 | Best sink organizers for small kitchens | Source-ready, pending public Netlify deploy. |

Evidence templates:

- `working/money_pages/MONEY_PAGE_SOP.md`
- `working/money_pages/money_page_pipeline.csv`
- `working/money_pages/evidence/product_evidence_tracker.csv`
- `working/money_pages/affiliate_readiness_snapshot.md`

## First 180-Day Goal

Primary goal: get 3 qualifying sales in 180 days without violating Amazon, FTC, or Google quality rules.

Secondary goals:

- Publish or update 10+ posts after applying.
- Add affiliate links only to pages with real buyer intent.
- Keep 100% of affiliate pages disclosed and logged.
- Review GSC data every week.
- Audit affiliate links monthly.

## Do Not Do

- Do not apply before Search Console setup and final compliance review are done.
- Do not buy through your own links.
- Do not ask friends/family to buy just to trigger commissions.
- Do not incentivize clicks or purchases.
- Do not run paid ads directly to Amazon.
- Do not use Amazon, Kindle, Prime, or misspellings in domain, tracking ID, ad keywords, or social usernames.
- Do not manually copy Amazon prices, star ratings, customer reviews, or product images.

## After Approval

1. Create or confirm the tracking ID.
2. Add the live site and any social properties in Associates Central.
3. Add the first affiliate links only to approved money-intent pages.
4. Use clear link labels such as `Paid link`.
5. Add `rel="sponsored"` when editing HTML links.
6. Log every link in `working/tracking/affiliate_link_log.csv`.
7. Start the 180-day tracker in `working/tracking/affiliate_180_day_tracker.csv`.
