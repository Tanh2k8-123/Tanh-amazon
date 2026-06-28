# Launch Handoff

Last updated: 2026-06-28

## Trang thai hien tai

- Site static da san sang trong `site/`.
- Public site da live: `https://tanhamazon.netlify.app`, nhung dang phuc vu deployment cu.
- File deploy ZIP: `working/deploy/tanhs-compact-kitchen-site.zip`.
- Latest local source: 34 HTML pages va 34 sitemap URLs.
- Current public Netlify deploy: 29 sitemap URLs; rice cooker va sink organizer money pages dang 404 public cho den khi deploy ZIP/Git moi.
- 25/25 content pages da dat `Source-ready` theo `scripts/audit-content.ps1`.
- 0 content pages can mo rong them truoc khi promote.
- 0 content pages thieu internal links trong article body.
- Chua co Amazon affiliate links, dung voi chien luoc lean-first.
- Public verification gate moi se pass chi khi public sitemap co 34 URLs va co rice cooker + sink organizer pages.

## Con can Tanh thuc hien tiep

1. Deploy latest source len Netlify bang GitHub connection hoac upload `working/deploy/tanhs-compact-kitchen-site.zip`.
2. Chay public verification 34-URL gate.
3. Tao Google Search Console URL-prefix property cho `https://tanhamazon.netlify.app/`.
4. Submit sitemap `https://tanhamazon.netlify.app/sitemap.xml`.
5. Inspect cac URL uu tien trong `working/search_console_setup_packet.md`.

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
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1 -PublicUrl "https://tanhamazon.netlify.app" -ContactEmail "dotuananh20082006@gmail.com" -ExpectedSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
```

## Kiem tra launch status

Chay lenh nay bat cu luc nao de xem con blocker nao:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1 -CheckPublic -ExpectedPublicSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
```

Trang thai launch duoc xem la sach khi:

- `PlaceholderEmailPresent` la `False`.
- `PlaceholderHostPresent` la `False`.
- `LaunchBlockerCount` la `0`.
- `PublicDeployGatePassed` la `True` khi check public deploy.
- `scripts\verify-static-site.ps1` pass khong can `-AllowLaunchPlaceholders`.

## Sau khi public

1. Xac nhan public verification 34-URL gate pass.
2. Tao Google Search Console URL-prefix property cho `https://tanhamazon.netlify.app/`.
3. Submit `https://tanhamazon.netlify.app/sitemap.xml`.
4. Inspect cac URL dau tien trong `working/search_console_setup_packet.md`.
5. Theo doi KPI hang tuan trong `working/tracking/search_console_weekly_kpi.csv`.
6. Chua apply Amazon Associates cho den khi site public on dinh va da review lai compliance.

## Khong lam luc nay

- Khong them Amazon product images, prices, ratings, hay review excerpts thu cong.
- Khong chay paid ads truc tiep den Amazon.
- Khong dung Vercel Hobby cho production affiliate site.
