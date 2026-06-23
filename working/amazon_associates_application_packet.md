# Amazon Associates Application Packet

Last updated: 2026-06-22

Purpose: prepare the exact information Tanh will need when the site is public enough to apply for Amazon Associates US.

## Current Decision

Do not apply yet.

Reason:

- The site is not publicly deployed yet.
- `site/contact/index.html` still uses the placeholder email `hello@example.com`.
- Search Console is not connected yet.
- There are no affiliate links yet, which is intentional.

Apply only after the public site is live, contact email is real, required pages are reachable, and the first content batch has been checked on the live URL.

## Application Readiness Checklist

- [ ] Final public URL exists.
- [ ] Contact email is real and public.
- [ ] About page is live.
- [ ] Contact page is live.
- [ ] Privacy Policy page is live.
- [ ] Affiliate Disclosure page is live.
- [ ] Footer includes: `As an Amazon Associate I earn from qualifying purchases.`
- [ ] 10+ original content pages are live and reachable.
- [ ] Sitemap is submitted or ready to submit.
- [ ] No copied Amazon product images, prices, star ratings, or customer review text.
- [ ] Traffic plan is written even if traffic is still early.
- [ ] 180-day plan is ready.

## Application Fields

### Website URL

Use the final HTTPS URL only.

```text
TODO: paste final public URL after Netlify/Cloudflare deployment
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

Do not publish these as affiliate pages until product evidence is collected.

| Priority | Page idea | Current evidence need |
| --- | --- | --- |
| 1 | Best compact air fryers for small kitchens | Product model shortlist, dimensions, basket capacity, cleaning notes, clearance notes. |
| 2 | Best dish drying racks for small kitchens | Rack types, counter depth, drainage, storage, product dimensions. |
| 3 | Best small coffee makers for apartments | Brew type, counter footprint, water access, cleaning, noise. |
| 4 | Best compact rice cookers for two people | Capacity definitions, pot cleaning, lid clearance, keep-warm notes. |
| 5 | Best sink organizers for small kitchens | Drainage, airflow, sponge/brush fit, footprint, cleaning. |

## First 180-Day Goal

Primary goal: get 3 qualifying sales in 180 days without violating Amazon, FTC, or Google quality rules.

Secondary goals:

- Publish or update 10+ posts after applying.
- Add affiliate links only to pages with real buyer intent.
- Keep 100% of affiliate pages disclosed and logged.
- Review GSC data every week.
- Audit affiliate links monthly.

## Do Not Do

- Do not apply before the site is public and contact email is fixed.
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
