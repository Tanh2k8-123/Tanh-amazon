# Deployment Guide

This project is a zero-budget static website for `Tanh's Compact Kitchen Notes`.

Current public URL:

```text
https://tanhamazon.netlify.app
```

Netlify note, 2026-06-28: Netlify deploys are currently blocked by deploy credit/skip behavior. Use Cloudflare Pages with a free `*.pages.dev` subdomain as the next zero-budget production path.

## Recommended hosts

- Cloudflare Pages Free, recommended now
- Netlify Free, only if deploy credit/build access is available

Do not use Vercel Hobby for the production affiliate site because this is a commercial/affiliate-oriented project.

Source audit note, 2026-06-28: Vercel Hobby remains non-commercial for this use case. GitHub Pages is not recommended for this affiliate project because GitHub Pages is not intended for online business/e-commerce style hosting. Cloudflare Pages is the best zero-budget fallback because it provides a free `*.pages.dev` subdomain and enough free static-site limits for this project.

## Option A - Netlify Drop without GitHub

Use this when you do not want to connect GitHub yet.

1. Open Netlify Drop.
2. Upload `working/deploy/tanhs-compact-kitchen-site.zip`.
3. Copy the public URL.
4. Run `scripts\prepare-launch.ps1` with that public URL and the final public contact email.
5. Run `scripts\verify-static-site.ps1`.
6. Upload the regenerated ZIP from `working/deploy/`.
7. Check `/`, `/contact/`, `/sitemap.xml`, and `/affiliate-disclosure/` on the public URL.

## Option B - Netlify from Git

The project has been pushed to:

```text
https://github.com/Tanh2k8-123/Tanh-amazon
```

1. Log in to Netlify with the same GitHub account or connect GitHub from Netlify.
2. Create a new Netlify site from Git.
3. Select repository: `Tanh2k8-123/Tanh-amazon`.
4. Use:
   - Build command: empty
   - Publish directory: `site`
5. Deploy.

## Option C - Cloudflare Pages, recommended now

Use this because Netlify deploys are currently out of credit/blocked.

Recommended free project name:

```text
tanhs-compact-kitchen
```

Expected free URL:

```text
https://tanhs-compact-kitchen.pages.dev
```

If that project name is not available, use `tanh-kitchen-notes`, `tanh-compact-home`, or another short lowercase name.

1. Push this folder to a GitHub repository or use Cloudflare Pages Direct Upload.
2. Use:
   - Framework preset: None
   - Build command: empty
   - Build output directory: `site`
3. After Cloudflare gives the final `*.pages.dev` URL, run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\prepare-cloudflare-pages.ps1 -ProjectName "tanhs-compact-kitchen" -ContactEmail "dotuananh20082006@gmail.com"
```

4. Deploy.
   - Git integration: push the regenerated source files to `main`.
   - Direct Upload: upload `working/deploy/tanhs-compact-kitchen-site.zip` or the `site/` directory.
5. Verify public launch:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhs-compact-kitchen.pages.dev" -ContactEmail "dotuananh20082006@gmail.com" -ExpectedSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1 -PublicUrl "https://tanhs-compact-kitchen.pages.dev" -CheckPublic -ExpectedPublicSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
```

The `site/_headers` file provides static security headers for hosts that support it.

## Current public launch state

- Contact email is set to `dotuananh20082006@gmail.com`; update only if Tanh wants a different public address.
- `site/robots.txt` and `site/sitemap.xml` now use `https://tanhs-compact-kitchen.pages.dev`.
- Local static verification passes with 34 sitemap URLs.
- As of 2026-06-28, Netlify still publishes the old Netlify Drop deploy at commit `161a844`.
- GitHub `main` is ahead of the public deployment, but new Netlify deploy events are skipped/blocked.
- Current public Netlify sitemap still has 29 URLs. Latest source has 34 URLs and includes `/best/compact-rice-cookers-two-people/` and `/best/sink-organizers-small-kitchens/`.
- Deploy latest source to Cloudflare Pages before Search Console.
- Do not apply for Amazon Associates until Search Console setup and final compliance review are done.

## Recommended next deployment change

Move production to Cloudflare Pages free `*.pages.dev`.

Preferred URL if available:

```text
https://tanhs-compact-kitchen.pages.dev
```

Prepare the source for that URL:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\prepare-cloudflare-pages.ps1 -ProjectName "tanhs-compact-kitchen" -ContactEmail "dotuananh20082006@gmail.com"
```

Netlify fallback if credits/access return: keep the existing public URL, but connect the current Netlify project to:

```text
Tanh2k8-123/Tanh-amazon
```

Use an empty build command and `site` as the publish directory. After the first Git-based production deploy, every push to `main` should update the public site automatically. Until that connection exists, upload the regenerated deploy ZIP through Netlify Drop after each approved release.

## Launch preparation command

Run this after Tanh has chosen the host and the final public URL exists:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\prepare-launch.ps1 -PublicUrl "https://your-final-url.example" -ContactEmail "dotuananh20082006@gmail.com"
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-static-site.ps1
```

The first command updates the contact email, sitemap, robots file, and deploy ZIP. The second command verifies required files, internal links, sitemap count, HTTPS URLs, and launch placeholders.

## Public verification command

Run this after Cloudflare deploys:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhs-compact-kitchen.pages.dev" -ContactEmail "dotuananh20082006@gmail.com" -ExpectedSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
```

## Launch status command

Run this before and after deployment to see remaining blockers:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1 -PublicUrl "https://tanhs-compact-kitchen.pages.dev" -CheckPublic -ExpectedPublicSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
```

The launch status should show `LaunchBlockerCount` as `0` and `PublicDeployGatePassed` as `True` before the latest public launch is considered clean.

For a shorter handoff checklist, see `working/deploy/LAUNCH_HANDOFF.md`.

## Current public URL

```text
https://tanhamazon.netlify.app
```

## Target free Cloudflare URL

```text
https://tanhs-compact-kitchen.pages.dev
```
