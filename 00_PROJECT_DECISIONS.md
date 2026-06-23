# Project Decisions

File nay ghi lai cac quyet dinh da chot truoc khi thuc hien task, de tat ca file va hanh dong sau nay di cung mot huong.

## Quyet dinh da chot

| Hang muc | Quyet dinh |
| --- | --- |
| Brand direction | Personal brand |
| Brand name | Tanh Corleone |
| Default public-facing brand | Tanh's Compact Kitchen Notes |
| Niche | Home/Kitchen |
| Sub-niche mac dinh | Small kitchen appliances for small spaces |
| Audience | Apartment renters, small kitchen owners, first-home buyers |
| Content language | English |
| Operating language | Vietnamese |
| Market | Amazon US |
| Budget | 0 USD luc dau |
| Hosting strategy | Static-first; uu tien Netlify Free hoac Cloudflare Pages Free cho production affiliate |
| Vercel role | Prototype/preview non-commercial only; khong dung Hobby cho site affiliate production |
| Local machine role | Development, writing, preview, build; khong nen lam production server |
| CMS strategy | Static site generator hoac Next.js content files; tranh WordPress neu khong co hosting budget |
| Domain strategy | Dung `*.netlify.app` hoac `*.pages.dev` luc dau, mua custom domain sau khi co ngan sach |

## Kien truc zero-budget de xuat

```text
Local computer
├── Write Markdown content
├── Run local preview
├── Store source in Git/GitHub
└── Push to static host

Netlify Free or Cloudflare Pages Free
├── Host public website
├── Automatic HTTPS
├── CDN
├── Deploy preview
└── Public URL: brand-name.netlify.app or pages.dev
```

## Vercel, Netlify, Cloudflare hay may tinh ca nhan?

### Khong dung Vercel Hobby cho affiliate production

Vercel tot ve ky thuat, nhung Hobby plan bi gioi han cho non-commercial personal use. Vercel Fair Use Guidelines neu ro affiliate linking la primary purpose cua site duoc xem la commercial usage, nen site Amazon Affiliate production khong nen chay tren Vercel Hobby.

Co the dung Vercel de:

- Hoc va prototype.
- Preview noi bo khi chua gan affiliate links/ads.
- Test UI ky thuat.

Khong nen dung Vercel Hobby de:

- Host website affiliate public co muc tieu kiem tien.
- Gan Amazon affiliate links lam muc dich chinh.
- Chay ads network.

### Uu tien Netlify Free cho production zero-budget

Netlify cong khai noi Free plan co the deploy commercial projects, nen phu hop hon Vercel Hobby cho affiliate site giai doan dau. Luu y van phai theo usage limits va pricing hien hanh cua Netlify.

### Cloudflare Pages la lua chon tot can can nhac

Cloudflare Pages Free co thong so rat manh cho static sites: unlimited sites, unlimited static requests, unlimited bandwidth, 500 builds/month. Day la lua chon tot ve ky thuat cho static affiliate site. Truoc khi chot production, van nen doc lai Terms hien hanh cua Cloudflare cho use case commercial/affiliate.

### Dung may tinh ca nhan cho development

May tinh ca nhan nen dung de:

- Viet bai.
- Chay local preview.
- Build site.
- Test giao dien.
- Quan ly file/content.

Khong nen dung may tinh ca nhan lam server production vi:

- Phai chay 24/7.
- Can public IP/static IP hoac tunnel.
- Can cau hinh router/firewall/SSL.
- Toc do va uptime kem hon Vercel.
- Co rui ro bao mat neu mo may ra internet.

### Ket luan

Dung Netlify Free hoac Cloudflare Pages Free de host site public giai doan zero-budget. Dung may tinh ca nhan lam moi truong lam viec/local preview. Vercel Hobby chi dung de hoc/prototype non-commercial.

## Dieu kien Amazon can luu y

Amazon yeu cau site phai co original content va publicly available qua dia chi website da khai bao trong application. Vi vay URL mien phi cua static host co the la huong zero-budget hop ly neu site public, co noi dung goc, co trang disclosure/about/contact/privacy va duoc so huu/quan ly boi ban.

Truoc khi apply Amazon Associates:

- Publish it nhat 5-10 bai goc.
- Dam bao noi dung gan day, huu ich, khong thin affiliate.
- Co trang About, Contact, Privacy Policy, Affiliate Disclosure.
- Khai bao dung URL public dang dung thuc te.

## Brand direction da chot

Ten duoc cung cap:

```text
Tanh Corleone
```

Brand mac dinh cho site:

```text
Tanh's Compact Kitchen Notes
```

Ly do chon huong nay:

- Giu duoc chat personal brand cua `Tanh Corleone`.
- Gan truc tiep voi ngach `small kitchen / compact home`.
- Khong chua trademark cua Amazon.
- De mo rong sang kitchen organization, compact coffee setup va cleaning tools.

URL candidates zero-budget:

```text
tanhs-compact-kitchen.netlify.app
tanhs-kitchen-notes.netlify.app
tanh-compact-home.pages.dev
tanhs-compact-kitchen.pages.dev
```

## Nguon

- [Amazon Associates Program Policies](https://affiliate-program.amazon.com/help/operating/policies)
- [Amazon Associates FAQ](https://affiliate-program.amazon.com/)
- [Amazon Application Review Process](https://affiliate-program.amazon.com/help/node/topic/G8TW5AE9XL2VX9VM)
- [Vercel Hobby Plan](https://vercel.com/docs/plans/hobby)
- [Vercel Fair Use Guidelines](https://vercel.com/docs/limits/fair-use-guidelines)
- [Netlify Free Plan](https://www.netlify.com/blog/introducing-netlify-free-plan/)
- [Cloudflare Pages](https://pages.cloudflare.com/)
- [Cloudflare Pages Limits](https://developers.cloudflare.com/pages/platform/limits/)
