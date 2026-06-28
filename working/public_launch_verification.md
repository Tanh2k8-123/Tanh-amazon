# Public Launch Verification

Last updated: 2026-06-28

## Public URL

```text
https://tanhamazon.netlify.app
```

## Verification Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhamazon.netlify.app" -ContactEmail "dotuananh20082006@gmail.com" -ExpectedSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
```

## Result

| Check | Result |
| --- | --- |
| Public homepage reachable | Passed |
| `robots.txt` reachable | Passed |
| `robots.txt` points to public sitemap | Passed |
| `sitemap.xml` reachable | Passed |
| Sitemap namespace | `http://www.sitemaps.org/schemas/sitemap/0.9` |
| Sitemap URLs | 29 |
| Sitemap host | `tanhamazon.netlify.app` |
| All sitemap URLs return HTTP 200 | Passed |
| Contact email present | Passed |
| Amazon Associate footer statement present on all pages | Passed |
| Local launch blockers | 0 |

## Latest Source vs Public Deploy

| Check | Result |
| --- | --- |
| Latest local source sitemap URLs | 34 |
| Current public sitemap URLs | 29 |
| `/best/compact-rice-cookers-two-people/` public status | 404 on 2026-06-28 |
| `/best/sink-organizers-small-kitchens/` public status | 404 on 2026-06-28 |
| Required next action | Deploy latest source to Netlify before Search Console submission |

## Public Files

- `https://tanhamazon.netlify.app/`
- `https://tanhamazon.netlify.app/robots.txt`
- `https://tanhamazon.netlify.app/sitemap.xml`
- `https://tanhamazon.netlify.app/contact/`
- `https://tanhamazon.netlify.app/affiliate-disclosure/`

## Remaining External Setup

- Deploy latest source to Netlify so public sitemap has 34 URLs.
- Create Google Search Console URL-prefix property.
- Submit `https://tanhamazon.netlify.app/sitemap.xml` after deploy.
- Inspect the first priority URLs listed in `working/search_console_setup_packet.md`.
- Wait to apply for Amazon Associates until Search Console setup and a final compliance review are complete.
