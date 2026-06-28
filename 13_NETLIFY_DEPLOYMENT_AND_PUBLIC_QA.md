# Task 13 - Netlify Deployment And Public QA

## Muc tieu

Dua commit source moi len `https://tanhamazon.netlify.app/`, xac nhan public site khong 404 cac money pages moi, va kiem tra CSS/label fix da xuat hien tren live site.

## Input

- Latest GitHub commit on `main`.
- `netlify.toml`
- `site/`
- `working/deploy/tanhs-compact-kitchen-site.zip`
- `scripts/verify-public-site.ps1`
- Netlify account access.

## Output

- Public Netlify site hien thi homepage, best pages, guides, sitemap moi.
- Public verification pass.
- Netlify deployment mode ro rang: Git-connected hoac manual ZIP upload.
- Deployment notes duoc cap nhat.

## Checklist

- [ ] Kiem tra GitHub `main` co commit moi nhat.
- [ ] Neu co quyen Netlify: connect Netlify project voi GitHub repo.
- [ ] Neu chua connect GitHub: upload ZIP moi bang Netlify Drop.
- [ ] Xac nhan `/best/compact-rice-cookers-two-people/` khong 404.
- [ ] Xac nhan `/best/sink-organizers-small-kitchens/` khong 404 sau Task 12.
- [ ] Xac nhan `/sitemap.xml` tren public co URL moi.
- [ ] Kiem tra homepage va `/best/` tren public.
- [ ] Kiem tra desktop/mobile browser cho 1-2 money pages moi.
- [ ] Chay `scripts\verify-public-site.ps1`.
- [ ] Cap nhat `working/deployment_checklist.md`.
- [ ] Cap nhat `working/public_launch_verification.md` neu can.

## Commands

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\verify-public-site.ps1
```

## External Access Needed

Can Netlify login/session cua owner de connect GitHub hoac upload ZIP neu CLI/session hien tai khong co quyen.

## Done

- Public site hien thi du homepage, best pages, guides, sitemap moi.
- Public verification pass.
- Deployment path cho cac lan sau ro rang.
