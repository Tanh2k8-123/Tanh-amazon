# Task 03 - Website Foundation

## Muc tieu

Dung nen tang website co the publish content nhanh, index tot, mobile-friendly, de do luong va tuan thu compliance Amazon/FTC.

## Input

- Chua co domain/hosting/website.
- Ngan sach ban dau: 0 USD.
- Hosting mac dinh moi: static-first tren Netlify Free hoac Cloudflare Pages Free.
- Ngach: Home/Kitchen, tieng Anh.
- Chien luoc: lean-first, SEO-first.

## Output

- Domain/URL shortlist va brand positioning.
- Website live tren static host phu hop affiliate/commercial use voi cau truc chuyen muc co ban.
- Trang phap ly/toi thieu: About, Contact, Privacy Policy, Affiliate Disclosure.
- Theme/plugin lean-first.
- Sitemap va Search Console san sang.

## Brand va domain

### Tieu chi dat ten

- De doc voi nguoi noi tieng Anh.
- Khong chua trademark nhu Amazon, Kindle, Prime.
- Khong qua hep vao mot san pham duy nhat.
- Co the mo rong trong Home/Kitchen.

### Vi du huong ten

| Huong | Vi du | Nhan xet |
| --- | --- | --- |
| Small-space kitchen | CompactKitchenLab.com, SmallSpaceCook.com | Gan voi ngach 90 ngay dau |
| Practical home | PracticalHomePicks.com, HomeToolNotes.com | Mo rong tot |
| Testing/research | KitchenGearNotes.com, TheKitchenTestList.com | Phu hop review co bang chung |

Khong can mua domain ngay trong task nay neu chua chac. Chon 3-5 option, kiem tra trademark va availability truoc.

## Stack zero-budget

| Thanh phan | Mac dinh zero-budget | Nang cap tuy chon |
| --- | --- | --- |
| Site framework | Astro hoac Next.js static content | WordPress self-hosted khi co hosting budget |
| Hosting | Netlify Free hoac Cloudflare Pages Free | Paid hosting khi co revenue |
| Domain | `brand-name.netlify.app` hoac `brand-name.pages.dev` | Custom `.com` domain |
| Content | Markdown/MDX files | Headless CMS |
| SEO | Static sitemap, robots.txt, meta fields | Paid SEO tooling |
| Performance | Static pages + host CDN | Image CDN/pro optimization |
| Tables | Markdown/HTML tables | Custom comparison components |
| Tracking | Google Search Console, GA4 | Plausible/Fathom neu can privacy-friendly paid |

## Hosting mien phi vs may tinh ca nhan

Dung may tinh ca nhan de viet, preview va build. Khong nen dung may tinh ca nhan lam production server cho affiliate site vi can uptime 24/7, public IP/tunnel, SSL, security va toc do on dinh.

Dung static host de host website public. Luu y: Vercel Hobby khong phu hop cho affiliate production vi gioi han non-commercial. Netlify Free va Cloudflare Pages Free la hai huong zero-budget phu hop hon de can nhac cho public affiliate site.

## Cau truc site v1

```text
/
├── /best/
│   ├── best-compact-air-fryers-for-small-kitchens/
│   └── best-under-sink-organizers-for-kitchens/
├── /reviews/
│   └── product-name-review/
├── /comparisons/
│   └── product-a-vs-product-b/
├── /guides/
│   └── small-kitchen-appliance-buying-guide/
├── /about/
├── /contact/
├── /privacy-policy/
└── /affiliate-disclosure/
```

## Trang can co

### Homepage

Muc tieu: noi ro site giup ai, ve van de gi, va dan vao content hub.

Can co:

- Value proposition: practical picks for small kitchens and compact homes.
- Link den 3-5 pillar pages.
- Latest guides/reviews.
- Disclosure footer.

### About

Can co:

- Ai dung sau site.
- Methodology: research, testing where possible, comparison criteria.
- Khong phong dai expertise neu chua co.
- Cach site kiem tien bang affiliate commission.

### Contact

Can co:

- Email lien he.
- Chinh sach nhan product samples neu co.
- Noi ro samples khong dam bao review tich cuc.

### Privacy Policy

Can co:

- Analytics/cookies.
- Affiliate links.
- Email opt-in neu co.
- Dung generator hop ly, sau do doc va chinh lai.

### Affiliate Disclosure

Can co:

- Cau Amazon bat buoc.
- Giai thich affiliate links.
- Chinh sach editorial independence.
- Link den Contact.

## SOP setup website

1. Chon 3 domain candidates.
2. Kiem tra trademark va social handle co ban.
3. Tao GitHub repo cho static site.
4. Chon Astro hoac Next.js static-first.
5. Tao layout co header/footer va navigation.
6. Tao 4 trang nen tang: About, Contact, Privacy Policy, Affiliate Disclosure.
7. Tao content collections hoac folders: Best, Reviews, Comparisons, Guides.
8. Tao sitemap XML va robots.txt.
9. Deploy len Netlify Free hoac Cloudflare Pages Free.
10. Lay URL public `*.netlify.app` hoac `*.pages.dev`.
11. Ket noi Google Search Console va GA4.
12. Khi co ngan sach, them custom domain neu can.

## Cau hinh SEO co ban

- URL structure: `/best/post-slug/`, `/reviews/post-slug/`, `/comparisons/post-slug/`, `/guides/post-slug/`. Chon mot pattern va giu on dinh.
- Title format: `Post Title | Brand Name`.
- Meta description viet thu cong cho money posts.
- Sitemap bat cho posts/pages/categories can index.
- Noindex: tag archives neu khong dung, search results, admin pages.
- Schema: Article/Review/FAQ chi dung khi noi dung that su dap ung yeu cau.

## Checklist

- [ ] Chon 3-5 domain candidates.
- [ ] Kiem tra domain khong chua trademark Amazon/Kindle/Prime.
- [ ] Tao static site repo.
- [ ] Chon Astro hoac Next.js.
- [ ] Tao content folders va menu.
- [ ] Tao About, Contact, Privacy Policy, Affiliate Disclosure.
- [ ] Them Amazon statement vao footer.
- [ ] Deploy len Netlify/Cloudflare Pages va co HTTPS.
- [ ] Tao sitemap XML.
- [ ] Ket noi Search Console.
- [ ] Ket noi GA4.
- [ ] Kiem tra mobile va toc do co ban.

## KPI

| KPI | Muc tieu |
| --- | --- |
| Time to launch | 7 ngay dau |
| Core pages | 4/4 live |
| Sitemap submitted | Yes |
| Mobile usability | Khong loi nghiem trong |
| Monthly hosting cost | 0 USD luc dau |

## Tieu chi done

- Website live tren static host voi HTTPS.
- Search Console verified.
- Co sitemap.
- Co trang disclosure va footer statement.
- Co cau truc category de publish 5 bai dau.
