# Launch Handoff

Last updated: 2026-06-23

## Trang thai hien tai

- Site static da san sang trong `site/`.
- File deploy ZIP: `working/deploy/tanhs-compact-kitchen-site.zip`.
- 29 HTML pages va 29 sitemap URLs.
- 20/20 content pages da dat `Source-ready` theo `scripts/audit-content.ps1`.
- 0 content pages can mo rong them truoc khi promote.
- 0 content pages thieu internal links trong article body.
- Chua co Amazon affiliate links, dung voi chien luoc lean-first.

## Con can Tanh cung cap

1. Host mien phi:
   - Khuyen nghi mac dinh: Netlify Free.
   - Phuong an khac: Cloudflare Pages Free.
2. Final public URL sau lan deploy dau tien.

Public contact email hien tai: `dotuananh20082006@gmail.com`.

## Khuyen nghi launch nhanh voi Netlify Free

Day la cach don gian nhat khi chua muon dung GitHub.

1. Mo Netlify Drop trong trinh duyet.
2. Keo file `working/deploy/tanhs-compact-kitchen-site.zip` len.
3. Copy public URL Netlify tao ra.
4. Chay lenh nay trong PowerShell, thay URL va email that:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\prepare-launch.ps1 -PublicUrl "https://final-public-url" -ContactEmail "dotuananh20082006@gmail.com"
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-static-site.ps1
```

5. Upload lai ZIP moi vua duoc tao trong `working/deploy/`.
6. Mo `/`, `/contact/`, `/sitemap.xml`, va `/affiliate-disclosure/` tren URL public de kiem tra.

## Cloudflare Pages Free

Dung cach nay neu Tanh thich Cloudflare hon.

1. Vao Cloudflare Pages.
2. Chon Direct Upload hoac ket noi GitHub.
3. Neu dung Direct Upload, upload folder `site/` hoac ZIP da tao.
4. Neu dung GitHub:
   - Framework preset: None.
   - Build command: de trong.
   - Build output directory: `site`.
5. Sau khi co public URL, chay `scripts\prepare-launch.ps1` nhu phan Netlify.
6. Deploy lai ban da cap nhat sitemap, robots, va email.

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

1. Tao Google Search Console URL-prefix property cho final public URL.
2. Submit `https://FINAL_PUBLIC_URL/sitemap.xml`.
3. Inspect cac URL dau tien trong `working/search_console_setup_packet.md`.
4. Theo doi KPI hang tuan trong `working/tracking/search_console_weekly_kpi.csv`.
5. Chua apply Amazon Associates cho den khi site public on dinh va da review lai compliance.

## Khong lam luc nay

- Khong them Amazon product images, prices, ratings, hay review excerpts thu cong.
- Khong chay paid ads truc tiep den Amazon.
- Khong dung Vercel Hobby cho production affiliate site.
