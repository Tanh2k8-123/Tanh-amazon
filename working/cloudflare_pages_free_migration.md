# Cloudflare Pages Free Migration

Last updated: 2026-06-28

## Decision

Use Cloudflare Pages with a free `*.pages.dev` subdomain because Netlify deploys are out of credit/blocked.

Recommended project name:

```text
tanhs-compact-kitchen
```

Target URL if available:

```text
https://tanhs-compact-kitchen.pages.dev
```

Backup project names:

```text
tanh-kitchen-notes
tanh-compact-home
tanhs-kitchen-notes
```

## Why not GitHub Pages?

GitHub Pages gives a free `github.io` URL, but it is not the right production target for this affiliate site. GitHub's own limits documentation says Pages is not intended or allowed as free web hosting for an online business/e-commerce style site. This project is commercial/affiliate-oriented, so avoid GitHub Pages for production.

## Why Cloudflare Pages?

Cloudflare Pages is a better free path for this static site:

- Free `*.pages.dev` subdomain.
- Static HTML can publish from the `site/` directory.
- Current Cloudflare Pages Free limits list 500 builds per month.
- Free plan supports far more files than this project needs.
- The existing `site/_headers` file works with Cloudflare Pages headers.

## Steps

1. Open Cloudflare dashboard.
2. Go to Workers & Pages.
3. Create a Pages project.
4. Choose Git integration with `Tanh2k8-123/Tanh-amazon`, or choose Direct Upload.
5. Use these settings:

```text
Framework preset: None
Build command: empty
Build output directory: site
```

6. If Cloudflare accepts `tanhs-compact-kitchen`, prepare source:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\prepare-cloudflare-pages.ps1 -ProjectName "tanhs-compact-kitchen" -ContactEmail "dotuananh20082006@gmail.com"
```

If Cloudflare requires another project name, replace only `tanhs-compact-kitchen` in the command.

7. Deploy.
8. Verify:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhs-compact-kitchen.pages.dev" -ContactEmail "dotuananh20082006@gmail.com" -ExpectedSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1 -PublicUrl "https://tanhs-compact-kitchen.pages.dev" -CheckPublic -ExpectedPublicSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
```

9. After public verification passes, use the Cloudflare URL in Search Console:

```text
https://tanhs-compact-kitchen.pages.dev/
https://tanhs-compact-kitchen.pages.dev/sitemap.xml
```

## Done Criteria

- Public homepage returns 200.
- `/sitemap.xml` returns 34 URLs.
- `/robots.txt` points to the Cloudflare sitemap.
- Rice cooker and sink organizer pages return 200.
- `PublicDeployGatePassed = True`.
- Search Console property uses the Cloudflare URL.

## Official References

- Cloudflare Pages limits: https://developers.cloudflare.com/pages/platform/limits/
- Cloudflare Pages Direct Upload: https://developers.cloudflare.com/pages/get-started/direct-upload/
- GitHub Pages limits: https://docs.github.com/en/pages/getting-started-with-github-pages/github-pages-limits
