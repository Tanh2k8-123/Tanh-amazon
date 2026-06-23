# Task 07 - Publishing And Tracking

## Muc tieu

Co quy trinh publish va tracking don gian nhung du du lieu de biet bai nao dang co impression, click, conversion potential va can cap nhat gi.

## Input

- Website static live tren Netlify hoac Cloudflare Pages.
- Google Search Console verified.
- GA4 installed.
- Content briefs va draft tu [05_CONTENT_PRODUCTION_SOP.md](05_CONTENT_PRODUCTION_SOP.md).

## Output

- Publishing checklist.
- Content log.
- Weekly KPI report.
- Search Console review cadence.
- Update backlog.

## Tool stack lean-first

| Cong cu | Vai tro |
| --- | --- |
| Static site repo | Publish Markdown/MDX content |
| Astro/Next.js metadata | Title, meta, sitemap, basic SEO |
| Google Search Console | Queries, impressions, clicks, indexing |
| GA4 | Page traffic, engagement, events |
| Google Sheets | Content log, keyword log, weekly report |
| PageSpeed Insights | Kiem tra performance co ban |

## Publishing SOP

1. Chuyen draft vao file Markdown/MDX trong repo.
2. Dinh dang heading H1/H2/H3.
3. Them disclosure block dau bai.
4. Them table of contents neu bai dai.
5. Them comparison table neu la money post.
6. Them internal links den hub va bai lien quan.
7. Them CTA hop le.
8. Kiem tra affiliate links/disclosure neu co.
9. Them featured image co quyen su dung.
10. Viet SEO title va meta description.
11. Dat slug ngan, dung keyword nhung tu nhien.
12. Preview desktop/mobile bang local dev server.
13. Commit/push len GitHub.
14. Deploy len Netlify hoac Cloudflare Pages.
15. Submit URL trong Search Console neu can.
16. Ghi vao content log.

## Content log columns

| Column | Mo ta |
| --- | --- |
| Publish date | Ngay publish |
| URL | Link bai |
| Title | Tieu de |
| Primary keyword | Keyword chinh |
| Intent | Best/review/comparison/tutorial |
| Pillar | Content pillar |
| Word count | So tu |
| Affiliate links | Yes/No |
| Disclosure checked | Yes/No |
| Indexed | Yes/No/Pending |
| 30-day impressions | Lay tu GSC |
| 30-day clicks | Lay tu GSC |
| Avg position | Lay tu GSC |
| Next action | Update, internal link, leave, rewrite |
| Source of images | Own, licensed, manufacturer-approved, Amazon allowed tool, none |
| Affiliate links checked | Yes/No/N/A |
| Last policy review | Ngay review Amazon/FTC/Google gan nhat |

## Weekly reporting SOP

Moi tuan, cap nhat mot report ngan:

1. So bai da publish tuan nay.
2. Tong impressions/clicks tu Search Console.
3. Top 10 queries theo impressions.
4. Top 10 pages theo clicks.
5. Pages co impressions cao nhung CTR thap.
6. Pages vi tri 8-30 can update.
7. Affiliate link clicks/sales neu da co Associates dashboard.
8. 3 action quan trong cho tuan sau.

## Cach doc Search Console

| Tin hieu | Y nghia | Hanh dong |
| --- | --- | --- |
| Impressions tang, clicks thap | Title/meta chua hap dan hoac intent mismatch | Rewrite title/meta, them nam/use case |
| Position 8-30 | Dang co co hoi | Them content depth, internal links, FAQ, evidence |
| Query khac target | Google thay bai phu hop intent khac | Them section hoac tao bai rieng |
| Page indexed cham | Crawl/discovery yeu | Submit URL, internal link tu homepage/hub |
| Traffic giam sau update | Can audit quality/intent | So sanh SERP moi, cap nhat content |

## 30/60/90-day update rules

- Sau 30 ngay: xem indexed chua, co impression khong.
- Sau 60 ngay: neu co impression nhung CTR thap, cap nhat title/meta.
- Sau 90 ngay: neu position 8-30, nang cap bai voi bang chung, FAQ, internal links.
- Neu 0 impression sau 90 ngay: xem lai keyword, index, internal links, content quality.

## Checklist publish

- [ ] H1 duy nhat.
- [ ] Slug ngan va ro.
- [ ] Disclosure co truoc affiliate link dau tien.
- [ ] Anh co alt text va nguon hop le.
- [ ] Link noi bo 3+.
- [ ] Link ngoai den nguon huu ich khi can.
- [ ] CTA ro nhung khong qua da.
- [ ] Affiliate link co tag dung.
- [ ] Meta title/meta description viet thu cong.
- [ ] Preview mobile khong loi.
- [ ] URL da ghi vao content log.

## KPI

| KPI | Muc tieu 30 ngay | Muc tieu 90 ngay |
| --- | --- | --- |
| Published posts | 5 | 15-25 |
| Indexed posts | 80%+ | 90%+ |
| Search impressions | Co tin hieu dau tien | Tang deu hang tuan |
| Weekly reports | 4/4 | 12/12 |
| Updated posts | 0-2 | 5+ |

## Tieu chi done

- Co content log trong Google Sheets.
- Co weekly report template trong [10_TEMPLATES.md](10_TEMPLATES.md).
- Moi bai publish deu qua checklist.
- Search Console duoc dung hang tuan de tao update backlog.
