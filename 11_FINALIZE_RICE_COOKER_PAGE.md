# Task 11 - Finalize Rice Cooker Money Page

## Muc tieu

Hoan tat local changes cho trang `/best/compact-rice-cookers-two-people/`, dam bao trang source-ready, audit pass, browser QA on, deploy ZIP moi duoc tao, va commit/push len GitHub.

## Input

- `site/best/compact-rice-cookers-two-people/index.html`
- `working/money_pages/evidence/best-compact-rice-cookers-two-people.md`
- `working/money_pages/evidence/product_evidence_tracker.csv`
- `working/money_pages/money_page_pipeline.csv`
- `working/tracking/content_log.csv`
- Supporting guide links:
  - `/guides/compact-rice-cooker-buying-guide/`
  - `/guides/store-appliances-small-kitchen/`
  - `/guides/apartment-kitchen-essentials-checklist/`

## Output

- Rice cooker page live trong source site.
- Best-list hub, sitemap, internal links, evidence tracker, pipeline, va content log da dong bo.
- Static/content/affiliate audits pass.
- Browser QA desktop/mobile khong co loi hien thi lon.
- ZIP deploy moi trong `working/deploy/`.
- GitHub co commit moi va working tree clean.

## Checklist

- [x] Tao source page khong co Amazon affiliate links.
- [x] Them page vao `/best/` hub.
- [x] Them page vao `site/sitemap.xml`.
- [x] Them internal links tu 3 supporting guides.
- [x] Cap nhat `working/content_status.md` tu 23 len 24 source-ready pages.
- [x] Cap nhat `working/money_pages/money_page_pipeline.csv`.
- [x] Cap nhat rice cooker evidence brief.
- [x] Cap nhat `working/money_pages/evidence/product_evidence_tracker.csv`.
- [x] Them row vao `working/tracking/content_log.csv`.
- [x] Chay `scripts\verify-static-site.ps1`.
- [x] Chay `scripts\audit-content.ps1`.
- [x] Chay `scripts\audit-affiliate-readiness.ps1`.
- [x] Browser QA desktop cho rice cooker page.
- [x] Browser QA mobile cho rice cooker page.
- [x] Tao deploy ZIP moi.
- [ ] Commit va push.

## QA Commands

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-static-site.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\audit-content.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\audit-affiliate-readiness.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\prepare-launch.ps1
```

## Affiliate Policy Gate

- Khong dung Amazon image, price, rating, review text, hoac seller copy thu cong.
- Khong them Amazon affiliate links cho den khi Associates workflow san sang.
- Neu sau nay them link, them disclosure truoc link dau tien va log vao `working/tracking/affiliate_link_log.csv`.

## Done

- Repo clean sau commit/push.
- GitHub `main` co commit moi.
- Snapshot noi dung tang tu 23 len 24 content pages.
- Public deploy van la buoc tiep theo trong Task 13 neu Netlify chua auto-deploy tu GitHub.

## QA Notes

- 2026-06-28: Static verification passed with 33 HTML files and 33 sitemap URLs.
- 2026-06-28: Content audit passed with 24 content pages, 0 launch blockers, 0 internal-link improvements, and 0 expansion improvements.
- 2026-06-28: Affiliate readiness audit found 0 Amazon affiliate links and 0 potential manual Amazon data mentions.
- 2026-06-28: Browser QA passed on desktop and mobile; mobile menu toggled from `aria-expanded=false` to `true` with no console warnings/errors and no horizontal overflow.
- 2026-06-28: Deploy ZIP regenerated at `working/deploy/tanhs-compact-kitchen-site.zip`.
