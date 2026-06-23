# Deployment Guide

This project is a zero-budget static website for `Tanh's Compact Kitchen Notes`.

## Recommended hosts

- Netlify Free
- Cloudflare Pages Free

Do not use Vercel Hobby for the production affiliate site because this is a commercial/affiliate-oriented project.

Source audit note, 2026-06-22: Vercel Hobby remains non-commercial; Netlify Free and Cloudflare Pages Free remain the preferred zero-budget hosting options for this static affiliate project.

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

1. Push this folder to a GitHub repository.
2. Create a new Netlify site from Git.
3. Use:
   - Build command: empty
   - Publish directory: `site`
4. Deploy.

## Option C - Cloudflare Pages

1. Push this folder to a GitHub repository or use Cloudflare Pages Direct Upload.
2. Use:
   - Framework preset: None
   - Build command: empty
   - Build output directory: `site`
3. Deploy.

The `site/_headers` file provides static security headers for hosts that support it.

## Required edits before public launch

- Contact email is currently set to `dotuananh20082006@gmail.com`; update only if Tanh wants a different public address.
- Update `site/robots.txt` and `site/sitemap.xml` to the final public URL.
- Add Search Console after the site is public.
- Do not apply for Amazon Associates until the site has public original content and required pages.

## Launch preparation command

Run this after Tanh has chosen the host and the final public URL exists:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\prepare-launch.ps1 -PublicUrl "https://your-final-url.example" -ContactEmail "dotuananh20082006@gmail.com"
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-static-site.ps1
```

The first command updates the contact email, sitemap, robots file, and deploy ZIP. The second command verifies required files, internal links, sitemap count, HTTPS URLs, and launch placeholders.

## Launch status command

Run this before and after deployment to see remaining blockers:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1
```

The launch status should show `LaunchBlockerCount` as `0` before the final public launch is considered clean.

For a shorter handoff checklist, see `working/deploy/LAUNCH_HANDOFF.md`.

## Current default URL placeholder

```text
https://tanhs-compact-kitchen.netlify.app
```
