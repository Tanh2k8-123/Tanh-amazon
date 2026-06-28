# Compliance Source Audit - 2026-06-22

Last re-check: 2026-06-28

Scope: Amazon US affiliate project for `Tanh's Compact Kitchen Notes`, Home/Kitchen niche, static site, no affiliate links added yet.

## Sources Checked

| Area | Source | Current note |
| --- | --- | --- |
| Amazon policies | https://affiliate-program.amazon.com/help/operating/policies | Amazon page shows Program Policies updated April 14, 2026. |
| Amazon commission rates | https://affiliate-program.amazon.com/help/node/topic/GRXPHT8U84RAYDXZ | Kitchen remains 4.50%; Home, Home Improvement, Furniture, Lawn & Garden, Pets remain 3.00%; All Other Categories remain 4.00%. |
| Amazon 180-day rule | https://affiliate-program.amazon.com/help/node/topic/G7MJTPEP9NC3YKMG | After applying, Amazon says associates have 180 days to refer sales; application review happens after three qualifying sales. |
| Amazon disclosure guidance | https://affiliate-program.amazon.com/help/node/topic/GHQNZAU6669EZS98 | Requires legal disclosure with links and the required Amazon Associate statement on the site. Clear examples include paid link, #ad, and #CommissionsEarned. |
| Amazon email/SMS/social | https://affiliate-program.amazon.com/help/node/topic/GQ5CMSPVXBXSFDFV | Special Links in email, SMS, or social posts require opted-in recipients and an easy opt-out. |
| FTC endorsement guidance | https://www.ftc.gov/business-guidance/resources/ftcs-endorsement-guides-what-people-are-asking | Affiliate disclosures apply whenever an endorsement is compensated through affiliate links. |
| Google high-quality reviews | https://developers.google.com/search/docs/specialty/ecommerce/write-high-quality-reviews | Review content should show expertise, evidence, measurements, pros/cons, alternatives, and first-hand support when making best recommendations. |
| Vercel fair use | https://vercel.com/docs/limits/fair-use-guidelines | Hobby is non-commercial; affiliate linking as the primary purpose is listed as commercial usage. |
| Netlify Free | https://www.netlify.com/blog/introducing-netlify-free-plan/ | Netlify says Free can deploy commercial projects within limits. |
| Cloudflare Pages | https://pages.cloudflare.com/ | Free plan lists 500 builds/month, unlimited sites, unlimited static requests, and unlimited bandwidth. |

## Changes Made From Audit

- Replaced the standalone `Amazon affiliate link` label in templates with clearer `Paid link` wording.
- Added an alternative label: `Amazon paid affiliate link - we may earn a commission.`
- Added `source_of_images`, `affiliate_links_checked`, and `last_policy_review` columns to the content log.
- Kept Vercel Hobby as not recommended for production affiliate hosting.
- Kept Netlify Free and Cloudflare Pages Free as the zero-budget launch options.

## Current Readiness

- Site has no Amazon affiliate links yet.
- Footer and disclosure page include the exact Amazon Associate statement.
- Content pages use no Amazon prices, star ratings, customer reviews, product images, or manually copied Amazon product media.
- Contact email and final public host are set.
- Latest 34-URL source still needs Netlify deployment before Search Console submission and Amazon application.

## Next Review

Review again before:

- Applying to Amazon Associates.
- Adding the first affiliate link.
- Publishing the first best-list page with product recommendations.
- Running paid/social/email traffic that includes affiliate links.
