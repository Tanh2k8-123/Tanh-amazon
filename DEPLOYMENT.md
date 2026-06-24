# Deployment Guide

This project is a zero-budget static website for `Tanh's Compact Kitchen Notes`.

Current public URL:

```text
https://tanhamazon.netlify.app
```

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

## Option C - Cloudflare Pages

1. Push this folder to a GitHub repository or use Cloudflare Pages Direct Upload.
2. Use:
   - Framework preset: None
   - Build command: empty
   - Build output directory: `site`
3. Deploy.

The `site/_headers` file provides static security headers for hosts that support it.

## Current public launch state

- Contact email is set to `dotuananh20082006@gmail.com`; update only if Tanh wants a different public address.
- `site/robots.txt` and `site/sitemap.xml` use `https://tanhamazon.netlify.app`.
- Public verification passes with `scripts\verify-public-site.ps1`.
- As of 2026-06-24, the public site was last deployed with Netlify Drop at commit `161a844`.
- GitHub `main` is ahead of the public deployment. A GitHub push does not update this Netlify project until Git-based continuous deployment is connected.
- Pending public update: commit `bcc614b` polishes the public compliance pages.
- Add Search Console next.
- Do not apply for Amazon Associates until Search Console setup and final compliance review are done.

## Recommended next deployment change

Keep the existing public URL, but connect the current Netlify project to:

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

Run this after Netlify deploys from GitHub:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhamazon.netlify.app" -ContactEmail "dotuananh20082006@gmail.com"
```

## Launch status command

Run this before and after deployment to see remaining blockers:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1
```

The launch status should show `LaunchBlockerCount` as `0` before the final public launch is considered clean.

For a shorter handoff checklist, see `working/deploy/LAUNCH_HANDOFF.md`.

## Current public URL

```text
https://tanhamazon.netlify.app
```
