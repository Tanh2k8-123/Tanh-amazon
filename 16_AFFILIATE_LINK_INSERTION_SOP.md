# Task 16 - Affiliate Link Insertion SOP

## Muc tieu

Them affiliate links dung policy sau khi Amazon Associates workflow san sang, co disclosure truoc link dau tien, co link-level clarity khi can, va moi link duoc log.

## Input

- Amazon tracking ID/application status.
- Approved money pages.
- `working/tracking/affiliate_link_log.csv`
- `working/money_pages/evidence/product_evidence_tracker.csv`
- `01_COMPLIANCE_RESEARCH.md`
- `06_AMAZON_ASSOCIATES_SETUP.md`

## Output

- Affiliate links duoc them co kiem soat.
- Moi link co ngay check, page, product, source URL, tracking ID, va policy review.
- Khong co gia/rating/review/image Amazon copy thu cong.

## Link Insertion Rules

- Do not add links until Task 15 has tracking ID/application status and the public 34-URL deploy is verified.
- Disclosure phai xuat hien truoc affiliate link dau tien tren page.
- CTA/link phai ro rang la paid/affiliate khi can.
- Dung `rel="sponsored"` cho affiliate links.
- Re-check availability ngay truoc khi link.
- Khong link product neu evidence outdated, unavailable, hoac khong phu hop recommendation.
- Khong hardcode Amazon price, star rating, review count, review quote, Prime badge, hoac Amazon image.

## Checklist Per Page

- [ ] Confirm Amazon Associates tracking ID/application status is active enough for link insertion.
- [ ] Confirm public page returns 200 on the latest Netlify deploy.
- [ ] Confirm page has current evidence and update date.
- [ ] Confirm product still fits pick/watchlist role.
- [ ] Confirm no forbidden Amazon data exists.
- [ ] Add disclosure before first affiliate link.
- [ ] Add affiliate CTA/link with `rel="sponsored"`.
- [ ] Log link in `working/tracking/affiliate_link_log.csv`.
- [ ] Run `scripts\audit-affiliate-readiness.ps1`.
- [ ] Browser QA link placement desktop/mobile.
- [ ] Commit/push.

## Link Log Minimum Columns

- Date added
- Page URL
- Product name
- Merchant/source
- Destination URL
- Tracking ID
- Link type
- Disclosure checked
- Availability checked date
- Last policy review
- Notes

## Done

- 100% affiliate links logged.
- 100% monetized pages have disclosure before first paid link.
- Audit pass after link insertion.
- No Amazon image, price, rating, review, Prime badge, or other manually copied Amazon data is hardcoded.
