# Search Console Day 0 Checklist

Last updated: 2026-06-28

## Muc tieu

Ket noi Google Search Console cho site public:

```text
https://tanhs-compact-kitchen.pages.dev/
```

Sau khi lam xong, sitemap se duoc submit va cac URL uu tien se duoc inspect/request indexing neu Google cho phep.

## Trang thai hien tai

- Public site: pending Cloudflare Pages deploy as of 2026-06-28.
- Public verifier: passed for the currently deployed 29 sitemap URLs.
- Sitemap: `https://tanhs-compact-kitchen.pages.dev/sitemap.xml`.
- Public sitemap URLs: 29.
- Latest local source sitemap URLs: 34.
- Deploy blocker: `/best/compact-rice-cookers-two-people/` and `/best/sink-organizers-small-kitchens/` are not public until Cloudflare Pages is deployed.
- Contact email: `dotuananh20082006@gmail.com`.
- Affiliate links: 0.
- Content pages: 25/25 `Source-ready` in local source.

## Nguon chinh thuc da dung

- Google Search Console overview: https://developers.google.com/search/docs/monitor-debug/search-console-start
- Google sitemap overview: https://developers.google.com/search/docs/crawling-indexing/sitemaps/overview
- Google Sitemaps report: https://support.google.com/webmasters/answer/7451001
- Google URL Inspection tool: https://support.google.com/webmasters/answer/9012289
- Google request recrawl guidance: https://developers.google.com/search/docs/crawling-indexing/ask-google-to-recrawl

## Nguyen tac can nho

- Sitemap giup Google phat hien URL, nhung khong dam bao moi URL se duoc crawl hoac index.
- URL Inspection co the kiem tra trang, test live URL, va request indexing cho tung URL.
- Request indexing co quota; request lai nhieu lan khong lam Google crawl nhanh hon.
- Nen dung Search Console de xem sitemap co doc duoc khong va co loi parse nao khong.

## Buoc 1 - Tao property

1. Mo Google Search Console.
2. Chon `Add property`.
3. Chon `URL-prefix`.
4. Nhap chinh xac:

```text
https://tanhs-compact-kitchen.pages.dev/
```

5. Lam theo verification ma Google dua ra.

Ghi chu: neu Google yeu cau HTML file hoac meta tag, hay dua file/tag cho Codex de minh them vao repo va push len GitHub.

## Buoc 2 - Submit sitemap

Trong Search Console:

1. Mo property `https://tanhs-compact-kitchen.pages.dev/`.
2. Vao `Sitemaps`.
3. Submit:

```text
sitemap.xml
```

Hoac full URL neu UI yeu cau:

```text
https://tanhs-compact-kitchen.pages.dev/sitemap.xml
```

4. Ghi ngay submit vao `working/tracking/indexing_tracker.csv`.

## Buoc 3 - Inspect P0 URLs

Chi submit/inspect sau khi Cloudflare public sitemap da co 34 URLs. Sau khi submit sitemap, dung URL Inspection cho P0 URLs:

1. `https://tanhs-compact-kitchen.pages.dev/`
2. `https://tanhs-compact-kitchen.pages.dev/guides/`
3. `https://tanhs-compact-kitchen.pages.dev/guides/small-kitchen-appliance-buying-guide/`
4. `https://tanhs-compact-kitchen.pages.dev/guides/how-to-choose-air-fryer-size-two-people/`
5. `https://tanhs-compact-kitchen.pages.dev/comparisons/compact-air-fryer-vs-toaster-oven/`
6. `https://tanhs-compact-kitchen.pages.dev/guides/what-kitchen-appliances-do-i-need/`
7. `https://tanhs-compact-kitchen.pages.dev/affiliate-disclosure/`
8. `https://tanhs-compact-kitchen.pages.dev/best/compact-air-fryers-small-kitchens/`
9. `https://tanhs-compact-kitchen.pages.dev/best/dish-drying-racks-small-kitchens/`
10. `https://tanhs-compact-kitchen.pages.dev/best/small-coffee-makers-apartments/`
11. `https://tanhs-compact-kitchen.pages.dev/best/compact-rice-cookers-two-people/`
12. `https://tanhs-compact-kitchen.pages.dev/best/sink-organizers-small-kitchens/`

Neu URL chua co trong Google index, bam `Request indexing` neu nut nay kha dung.

## Buoc 4 - Cap nhat tracker

Cap nhat file:

```text
working/tracking/indexing_tracker.csv
```

Dung cac cot:

- `Submitted to GSC`: Yes sau khi sitemap da submit.
- `Inspection requested`: Yes neu da request indexing cho URL.
- `Indexed status`: giu theo trang thai GSC hien thi.
- `Last checked`: ngay kiem tra.
- `Indexing notes`: ghi ly do neu Google bao loi.
- `Next action`: viec tiep theo cho URL.

## Buoc 5 - KPI tuan dau

Cap nhat file:

```text
working/tracking/search_console_weekly_kpi.csv
```

Trong tuan dau, clicks/impressions co the chua co. Dieu quan trong la:

- Sitemap submitted.
- P0 URLs inspected.
- Khong co loi sitemap.
- Khong co trang quan trong bi noindex, blocked, 404, hoac redirect sai.

## Khi nao bao Codex

Gui lai cho Codex mot trong cac thong tin sau neu gap:

- HTML verification file cua Google.
- Meta verification tag cua Google.
- Screenshot loi sitemap.
- Screenshot URL Inspection cua URL quan trong.
- Danh sach URL bi `Discovered - currently not indexed` sau 7-14 ngay.
