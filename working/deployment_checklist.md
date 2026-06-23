# Deployment Checklist

## Current local status

- Static site source exists: `site/`
- Public site is live: `https://tanhamazon.netlify.app`
- Netlify config exists: `netlify.toml`
- Local Git repository exists: `.git/`
- Deploy ZIP exists: `working/deploy/tanhs-compact-kitchen-site.zip`
- Launch preparation script exists: `scripts/prepare-launch.ps1`
- Static verification script exists: `scripts/verify-static-site.ps1`
- Public verification script exists: `scripts/verify-public-site.ps1`
- Amazon application packet exists: `working/amazon_associates_application_packet.md`
- Search Console setup packet exists: `working/search_console_setup_packet.md`
- Post-launch week 1 runbook exists: `working/post_launch_week_1_runbook.md`
- Required pages exist:
  - `/about/`
  - `/contact/`
  - `/privacy-policy/`
  - `/affiliate-disclosure/`
- Content hubs exist:
  - `/guides/`
  - `/best/`
  - `/comparisons/`
  - `/reviews/`
- Foundational guide exists:
  - `/guides/small-kitchen-appliance-buying-guide/`
  - `/guides/how-to-choose-air-fryer-size-two-people/`
  - `/guides/what-kitchen-appliances-do-i-need/`
  - `/guides/organize-small-kitchen-without-pantry/`
  - `/comparisons/compact-air-fryer-vs-toaster-oven/`
  - `/guides/apartment-kitchen-essentials-checklist/`
  - `/guides/minimalist-kitchen-tools-list/`
  - `/guides/store-appliances-small-kitchen/`
  - `/guides/small-coffee-station-ideas-apartment/`
  - `/comparisons/mini-food-processor-vs-immersion-blender/`
  - `/guides/compact-rice-cooker-buying-guide/`
  - `/guides/dish-rack-small-kitchen-buying-guide/`
  - `/guides/small-coffee-maker-buying-guide/`
  - `/guides/sink-organizer-buying-guide/`
  - `/guides/cabinet-shelf-riser-buying-guide/`
  - `/guides/compact-blender-buying-guide/`
  - `/guides/manual-coffee-grinder-buying-guide/`
  - `/guides/countertop-compost-bin-apartment-guide/`
  - `/guides/portable-induction-cooktop-apartment-guide/`
  - `/guides/small-kitchen-counter-organization-ideas/`
- Sitemap exists: `/sitemap.xml`
- Robots file exists: `/robots.txt`
- Hero image exists: `/assets/compact-kitchen-hero.png`

## Public launch status

- Contact email: `dotuananh20082006@gmail.com`
- Public URL: `https://tanhamazon.netlify.app`
- Sitemap: `https://tanhamazon.netlify.app/sitemap.xml`
- Public verification: passed for 29 sitemap URLs.
- Remaining external setup: Google Search Console.

## Netlify deployment steps

1. Create or log in to a Netlify account.
2. Create a new site from Git.
3. Connect the repository containing `amazon-affiliate-2026`.
4. Use this build configuration:
   - Build command: empty
   - Publish directory: `site`
5. Deploy.
6. Copy the public URL.
7. Run `scripts/prepare-launch.ps1` with the final URL.
8. Run `scripts/verify-static-site.ps1` and `scripts/verify-public-site.ps1`.

## Cloudflare Pages deployment steps

1. Create or log in to Cloudflare.
2. Create a Pages project.
3. Connect the Git repository.
4. Use this build configuration:
   - Framework preset: None
   - Build command: empty
   - Build output directory: `site`
5. Deploy.
6. Copy the public URL.
7. Update `site/robots.txt` and `site/sitemap.xml` to the final URL.
8. Verify the live site.

## After deployment

- [x] Run `scripts/prepare-launch.ps1` with final URL and public contact email.
- [x] Run `scripts/verify-static-site.ps1`.
- [x] Run `scripts/verify-public-site.ps1`.
- [ ] Add Search Console property for final URL.
- [ ] Submit sitemap.
- [ ] Use `working/search_console_setup_packet.md` for first URL inspection batch.
- [ ] Start `working/tracking/indexing_tracker.csv`.
- [ ] Start `working/tracking/search_console_weekly_kpi.csv`.
- [ ] Add GA4 only if privacy policy matches the analytics setup.
- [ ] Do not apply Amazon Associates until Search Console setup and final compliance review are done.
