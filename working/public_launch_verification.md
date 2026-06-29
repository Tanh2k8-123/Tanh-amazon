# Public Launch Verification

Last updated: 2026-06-28

## Public URL

```text
https://tanhs-compact-kitchen.pages.dev
```

## Verification Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhs-compact-kitchen.pages.dev" -ContactEmail "dotuananh20082006@gmail.com" -ExpectedSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
```

## Result

Pending Cloudflare Pages deploy. The previous Netlify public verification is stale and should not be used for Search Console.

| Check | Result |
| --- | --- |
| Public homepage reachable | Pending Cloudflare deploy |
| `robots.txt` reachable | Pending Cloudflare deploy |
| `robots.txt` points to public sitemap | Pending Cloudflare deploy |
| `sitemap.xml` reachable | Pending Cloudflare deploy |
| Sitemap namespace | `http://www.sitemaps.org/schemas/sitemap/0.9` |
| Sitemap URLs | Expected 34 |
| Sitemap host | `tanhs-compact-kitchen.pages.dev` |
| All sitemap URLs return HTTP 200 | Pending Cloudflare deploy |
| Contact email present | Pending Cloudflare deploy |
| Amazon Associate footer statement present on all pages | Pending Cloudflare deploy |
| Local launch blockers | 0 |

## Latest Source vs Public Deploy

| Check | Result |
| --- | --- |
| Latest local source sitemap URLs | 34 |
| Current public sitemap URLs | Pending Cloudflare deploy |
| `/best/compact-rice-cookers-two-people/` public status | Pending Cloudflare deploy |
| `/best/sink-organizers-small-kitchens/` public status | Pending Cloudflare deploy |
| Required next action | Deploy latest source to Cloudflare Pages before Search Console submission |

## Public Files

- `https://tanhs-compact-kitchen.pages.dev/`
- `https://tanhs-compact-kitchen.pages.dev/robots.txt`
- `https://tanhs-compact-kitchen.pages.dev/sitemap.xml`
- `https://tanhs-compact-kitchen.pages.dev/contact/`
- `https://tanhs-compact-kitchen.pages.dev/affiliate-disclosure/`

## Remaining External Setup

- Deploy latest source to Cloudflare Pages so public sitemap has 34 URLs.
- Create Google Search Console URL-prefix property.
- Submit `https://tanhs-compact-kitchen.pages.dev/sitemap.xml` after deploy.
- Inspect the first priority URLs listed in `working/search_console_setup_packet.md`.
- Wait to apply for Amazon Associates until Search Console setup and a final compliance review are complete.
