# Money Page Evidence SOP

Last updated: 2026-06-23

## Muc tieu

Chuan bi cac bai `best X` co buyer intent ma khong bien site thanh thin affiliate. Moi recommendation phai dua tren bang chung co the kiem tra, co logic `best for` va `skip if`, va khong copy du lieu Amazon thu cong.

## Money Pages Dau Tien

1. Best Compact Air Fryers for Small Kitchens.
2. Best Dish Drying Racks for Small Kitchens.
3. Best Small Coffee Makers for Apartments.
4. Best Compact Rice Cookers for Two People.
5. Best Sink Organizers for Small Kitchens.

Pipeline chi tiet nam trong:

```text
working/money_pages/money_page_pipeline.csv
```

## Quy tac bang chung

- Uu tien manufacturer pages, manuals, product documentation, owned photos, owned testing notes, va permitted manufacturer/retailer assets.
- Khong copy Amazon product images, star ratings, review text, hoac live prices thu cong.
- Sau khi duoc Amazon Associates approve, chi dung SiteStripe, Product Advertising API, hoac cong cu Amazon hop le cho Amazon links/assets.
- Moi product section phai co `Best for` va `Skip if`.
- Moi affiliate link phai co disclosure gan link/bai va duoc log trong `working/tracking/affiliate_link_log.csv`.

## Workflow

1. Chon 1 money page trong `money_page_pipeline.csv`.
2. Thu thap 6-8 candidates vao `evidence/product_evidence_tracker.csv`.
3. Moi candidate can it nhat 2 source URLs neu co the.
4. Ghi dimensions, fit, cleaning friction, storage notes, warranty/safety notes.
5. Loai product neu khong co source ro rang hoac chi co Amazon data.
6. Draft comparison table tu evidence, khong tu star rating.
7. Draft product sections voi `best for`, `skip if`, trade-offs, va update note.
8. Chay compliance review truoc khi add affiliate links.

## Minimum Evidence Gate

Mot money page chi duoc publish khi co:

- It nhat 5 product candidates da review.
- It nhat 3 product candidates co source documentation tot.
- Co image source plan hop le cho moi product co hinh.
- Khong co Amazon-only copied price/rating/review/image.
- Co internal links den supporting guides.
- Co disclosure text san sang neu co affiliate links.

## Draft Structure

1. Intro: small-space buying problem.
2. Disclosure note if affiliate links exist.
3. Quick picks table.
4. How we chose.
5. Product sections.
6. Comparison table.
7. Buying guide section.
8. FAQ.
9. Update log.

## Khi nao add Amazon affiliate links

Chi add sau khi:

- Search Console da submit sitemap.
- Amazon Associates account duoc approve hoac link workflow hop le da san sang.
- Tracking ID da tao.
- Affiliate disclosure va `Paid link` labels da san sang.
- Link duoc log trong `working/tracking/affiliate_link_log.csv`.
