# Public Launch Verification

Last updated: 2026-06-23

## Public URL

```text
https://tanhamazon.netlify.app
```

## Verification Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhamazon.netlify.app" -ContactEmail "dotuananh20082006@gmail.com"
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

## Public Files

- `https://tanhamazon.netlify.app/`
- `https://tanhamazon.netlify.app/robots.txt`
- `https://tanhamazon.netlify.app/sitemap.xml`
- `https://tanhamazon.netlify.app/contact/`
- `https://tanhamazon.netlify.app/affiliate-disclosure/`

## Remaining External Setup

- Create Google Search Console URL-prefix property.
- Submit `https://tanhamazon.netlify.app/sitemap.xml`.
- Inspect the first priority URLs listed in `working/search_console_setup_packet.md`.
- Wait to apply for Amazon Associates until Search Console setup and a final compliance review are complete.
