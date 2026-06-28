# Task 15 - Amazon Associates Application

## Muc tieu

Chuan bi va nop Amazon Associates US khi public site on, Search Console da setup, va compliance review pass. Sau khi co tracking ID hoac application status, bat dau theo doi 3 qualifying sales / 180 days.

## Input

- Public site da deploy.
- Search Console Day 0 da xong hoac co trang thai ro.
- `working/amazon_associates_application_packet.md`
- `working/money_pages/affiliate_readiness_snapshot.md`
- `scripts/audit-affiliate-readiness.ps1`
- `working/tracking/affiliate_180_day_tracker.csv`

## Output

- Amazon Associates application submitted, hoac status/ly do hold duoc ghi ro.
- Tracking ID neu duoc cap.
- 180-day tracker bat dau neu application active.

## Pre-Apply Checklist

- [ ] Latest 34-URL Netlify deploy verified; rice cooker and sink organizer URLs khong 404.
- [ ] Public homepage, hubs, sitemap, required pages khong 404.
- [ ] Search Console property verified and sitemap submitted, hoac pending co ly do ro.
- [ ] `scripts\audit-affiliate-readiness.ps1` pass.
- [ ] Khong co Amazon affiliate links truoc khi workflow san sang.
- [ ] Khong co copied Amazon prices/ratings/reviews/images.
- [ ] Contact, Privacy, Affiliate Disclosure pages live.
- [ ] Application packet duoc review va khop voi site hien tai.
- [ ] Traffic/indexing co tin hieu co ban hoac co ly do apply som.

## Application Checklist

- [ ] Chon Amazon US.
- [ ] Dung site URL public chinh xac.
- [ ] Mo ta site: compact kitchen gear for apartments and small homes.
- [ ] Mo ta content: buyer guides, best lists, comparisons, organization guides.
- [ ] Khai bao traffic source that.
- [ ] Luu tracking ID/application status vao local tracker.
- [ ] Ghi ngay bat dau 180-day window neu account active.

## After Apply

- [ ] Cap nhat `working/tracking/affiliate_180_day_tracker.csv`.
- [ ] Cap nhat `working/tracking/affiliate_link_log.csv` khi link dau tien duoc them.
- [ ] Chuyen sang Task 16 truoc khi gan bat ky affiliate link nao.

## External Access Needed

Can Amazon Associates account/application access cua owner.

## Current Hold Notes

- 2026-06-28: Amazon application remains on hold because public Netlify still serves the older 29-URL sitemap.
- 2026-06-28: Local affiliate-readiness audit passes with 25 source-ready content pages, 5 planned money pages, 0 Amazon affiliate links, and 0 manual Amazon data mentions.
- Next action before applying: deploy latest 34-URL source, verify public gate, submit sitemap in Search Console, then rerun affiliate readiness.

## Done

- Co tracking ID hoac application status ro rang.
- 180-day tracker da khoi tao neu application active.
- Chua them link neu Task 16 chua san sang.
