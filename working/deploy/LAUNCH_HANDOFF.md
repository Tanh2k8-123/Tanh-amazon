# Launch Handoff

Last updated: 2026-06-23

## Trang thai hien tai

- Site static da san sang trong `site/`.
- Public site da live: `https://tanhamazon.netlify.app`.
- File deploy ZIP: `working/deploy/tanhs-compact-kitchen-site.zip`.
- 29 HTML pages va 29 sitemap URLs.
- 20/20 content pages da dat `Source-ready` theo `scripts/audit-content.ps1`.
- 0 content pages can mo rong them truoc khi promote.
- 0 content pages thieu internal links trong article body.
- Chua co Amazon affiliate links, dung voi chien luoc lean-first.
- Public verification da pass cho 29 sitemap URLs.

## Con can Tanh thuc hien tiep

1. Tao Google Search Console URL-prefix property cho `https://tanhamazon.netlify.app/`.
2. Submit sitemap `https://tanhamazon.netlify.app/sitemap.xml`.
3. Inspect cac URL uu tien trong `working/search_console_setup_packet.md`.

Public contact email hien tai: `dotuananh20082006@gmail.com`.

GitHub repo da day len:

```text
https://github.com/Tanh2k8-123/Tanh-amazon
```

## Netlify tu GitHub

Da thuc hien:

1. GitHub repo: `Tanh2k8-123/Tanh-amazon`.
2. Public URL: `https://tanhamazon.netlify.app`.
3. Cau hinh:
   - Build command: de trong.
   - Publish directory: `site`.
4. Verify:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-static-site.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhamazon.netlify.app" -ContactEmail "dotuananh20082006@gmail.com"
```

## Kiem tra launch status

Chay lenh nay bat cu luc nao de xem con blocker nao:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1
```

Trang thai launch duoc xem la sach khi:

- `PlaceholderEmailPresent` la `False`.
- `PlaceholderHostPresent` la `False`.
- `LaunchBlockerCount` la `0`.
- `scripts\verify-static-site.ps1` pass khong can `-AllowLaunchPlaceholders`.

## Sau khi public

1. Tao Google Search Console URL-prefix property cho `https://tanhamazon.netlify.app/`.
2. Submit `https://tanhamazon.netlify.app/sitemap.xml`.
3. Inspect cac URL dau tien trong `working/search_console_setup_packet.md`.
4. Theo doi KPI hang tuan trong `working/tracking/search_console_weekly_kpi.csv`.
5. Chua apply Amazon Associates cho den khi site public on dinh va da review lai compliance.

## Khong lam luc nay

- Khong them Amazon product images, prices, ratings, hay review excerpts thu cong.
- Khong chay paid ads truc tiep den Amazon.
- Khong dung Vercel Hobby cho production affiliate site.
