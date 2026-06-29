# Cach Du An Nay Kiem Tien

Last updated: 2026-06-28

## 1. Hieu don gian

Du an `Tanh's Compact Kitchen Notes` kiem tien theo mo hinh affiliate:

```text
Nguoi doc tim tren Google
-> vao bai viet cua minh
-> doc goi y san pham
-> bam link affiliate Amazon
-> mua hang du dieu kien
-> minh nhan hoa hong
```

Minh khong ban san pham, khong can nhap hang, khong can xu ly giao hang. Amazon ban hang va tra hoa hong neu don hang du dieu kien theo chuong trinh Amazon Associates.

## 2. Tai sao hien tai chua co tien ngay

Hien tai site da co nen tang content, nhung chua nen gan link affiliate.

Trang thai hien tai:

- Local source co 34 HTML pages.
- Co 25 content pages source-ready.
- Co 5 money pages dau tien.
- Chua co Amazon affiliate links.
- Public Netlify van dang chay ban cu 29 URLs va deploy dang bi het credit/blocked.
- Huong publish mien phi moi la Cloudflare Pages voi URL `*.pages.dev`.
- Google Search Console chua submit sitemap.
- Amazon Associates chua apply.

Noi cach khac: may ban hang da duoc lap khung, nhung cua hang public van chua cap nhat day du va chua co tai khoan affiliate de nhan hoa hong.

## 3. Cac buoc de bat dau kiem tien

### Buoc 1: Deploy public site moi nhat

Can dua source moi len public hosting de sitemap co du 34 URLs. Vi Netlify dang bi chan, dung Cloudflare Pages Free.

Dieu kien pass:

```text
PublicDeployGatePassed = True
PublicSitemapUrls = 34
PublicRequiredUrlsMissing = rong
```

Neu buoc nay chua xong, Google va Amazon se thay public site chua day du.

### Buoc 2: Setup Google Search Console

Sau khi deploy xong:

1. Tao property cho URL Cloudflare moi, vi du `https://tanhs-compact-kitchen.pages.dev/`.
2. Submit sitemap Cloudflare moi, vi du `https://tanhs-compact-kitchen.pages.dev/sitemap.xml`.
3. Inspect cac URL quan trong.
4. Theo doi impressions, clicks, indexed pages.

Search Console khong tao tien truc tiep, nhung no giup minh biet Google da thay site chua, bai nao co hien thi, bai nao co click, va nen viet/update bai nao tiep.

### Buoc 3: Apply Amazon Associates

Chi apply sau khi:

- Public site da deploy day du.
- Search Console da setup.
- About, Contact, Privacy, Affiliate Disclosure deu live.
- Site co content goc ro rang.
- Khong copy Amazon price, rating, review, image thu cong.

Amazon co quy trinh review sau khi site tao du qualifying sales. Theo tai lieu Amazon Associates, sau khi apply ban co 180 ngay de tao 3 qualifying sales; Amazon se review application sau khi dat moc nay.

### Buoc 4: Them affiliate links dung cach

Sau khi co tracking ID:

- Chi them link vao cac money pages co y dinh mua hang.
- Gan `rel="sponsored"` cho link affiliate.
- Co disclosure ro rang gan link dau tien.
- Log tung link vao `working/tracking/affiliate_link_log.csv`.
- Khong tu copy gia, sao review, review cua khach, hoac anh Amazon vao bai.

Vi du money pages uu tien:

1. Best compact air fryers for small kitchens
2. Best dish drying racks for small kitchens
3. Best small coffee makers for apartments
4. Best compact rice cookers for two people
5. Best sink organizers for small kitchens

## 4. Cong thuc tien

Cong thuc don gian:

```text
Tien = Traffic x CTR x Conversion rate x Gia tri don hang x Ty le hoa hong
```

Giai thich:

- `Traffic`: so nguoi vao site.
- `CTR`: bao nhieu nguoi bam link affiliate.
- `Conversion rate`: bao nhieu nguoi sau khi bam link thi mua hang.
- `Gia tri don hang`: tong tien don hang du dieu kien.
- `Ty le hoa hong`: phu thuoc category va quy dinh Amazon tai thoi diem do.

Vi du minh hoa, khong phai loi hua thu nhap:

```text
1,000 nguoi doc/thang
x 8% bam link
= 80 clicks

80 clicks
x 5% mua hang
= 4 don hang

4 don hang
x $40 gia tri trung binh
= $160 doanh thu Amazon duoc gioi thieu

$160
x 3% hoa hong gia dinh
= $4.80 hoa hong uoc tinh
```

Neu traffic tang, CTR tang, bai viet dung nhu cau hon, hoac san pham co gia tri cao hon, tien co the tang. Neu khong co traffic hoac nguoi doc khong mua, tien se bang 0.

## 5. Dieu quan trong nhat

Du an nay khong kiem tien bang viec viet that nhieu bai ngau nhien. No kiem tien bang viec viet dung bai co buyer intent.

Buyer intent la khi nguoi doc dang gan quyet dinh mua. Vi du:

- `best compact air fryer for small kitchen`
- `best dish drying rack for small kitchen`
- `small coffee maker for apartment`
- `compact rice cooker for two people`

Cac bai guide nhu `how to choose...` giup keo traffic va dan link noi bo den money pages. Money pages moi la noi gan affiliate link de tao doanh thu.

## 6. Tai sao phai lam cham va dung luat

Neu them link qua som hoac lam sai policy, co the mat tai khoan Amazon Associates.

Can tranh:

- Tu mua qua link cua minh.
- Nho ban be/gia dinh mua de du 3 sales.
- Copy gia Amazon thu cong.
- Copy star rating/review cua Amazon.
- Dung anh Amazon neu khong co quyen/PA API hop le.
- Chay paid ads truc tiep den Amazon.
- Che giau disclosure.

Muc tieu la xay site co noi dung that, co traffic that, co click that, co don hang that.

## 7. Lo trinh 90 ngay dau

### Ngay 1-7

- Deploy source moi len Cloudflare Pages Free.
- Verify public sitemap co 34 URLs.
- Setup Search Console.
- Submit sitemap.
- Inspect P0 URLs.

### Ngay 8-30

- Theo doi Search Console.
- Update cac bai co impressions nhung CTR thap.
- Viet them bai support neu can.
- Chua apply Amazon neu public/indexing con yeu.

### Ngay 31-60

- Apply Amazon Associates neu site public on dinh.
- Them link affiliate vao 3-5 money pages dau tien.
- Log tat ca affiliate links.
- Bat dau theo doi clicks va sales.

### Ngay 61-90

- Toi uu money pages dua tren du lieu Search Console.
- Cap nhat san pham neu het hang/thong tin cu.
- Lam them original photos/testing notes neu co the.
- Tiep tuc muc tieu 3 qualifying sales trong 180 ngay.

## 8. Viec can lam tiep ngay bay gio

Thu tu uu tien:

1. Tao Cloudflare Pages project mien phi.
2. Chon project name `tanhs-compact-kitchen` neu con trong.
3. Chay `scripts\prepare-cloudflare-pages.ps1` voi project name that.
4. Deploy source moi len Cloudflare Pages.
5. Chay public gate de xac nhan `PublicDeployGatePassed = True`.
6. Setup Google Search Console cho URL Cloudflare.
7. Submit sitemap.
8. Sau do moi apply Amazon Associates.

Lenh kiem tra sau khi deploy:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\launch-status.ps1 -PublicUrl "https://tanhs-compact-kitchen.pages.dev" -CheckPublic -ExpectedPublicSitemapUrls 34 -RequiredPublicPathList "/best/compact-rice-cookers-two-people/,/best/sink-organizers-small-kitchens/"
```

## 9. Nguon chinh thuc can doc lai truoc khi apply

- Amazon Associates Operating Agreement: https://affiliate-program.amazon.com/help/operating/agreement
- Amazon Associates Program Policies: https://affiliate-program.amazon.com/help/operating/policies
- Amazon Standard Commission Income Rates: https://affiliate-program.amazon.com/help/node/topic/GRXPHT8U84RAYDXZ
- Amazon 180-day / 3 sales help page: https://affiliate-program.amazon.com/help/node/topic/G7MJTPEP9NC3YKMG
- Amazon disclosure requirement help page: https://affiliate-program.amazon.com/help/node/topic/GHQNZAU6669EZS98
- Google Search Central sitemap guide: https://developers.google.com/search/docs/crawling-indexing/sitemaps/build-sitemap
- Google URL Inspection / recrawl guide: https://developers.google.com/search/docs/crawling-indexing/ask-google-to-recrawl

## 10. Tom tat mot cau

Du an nay se kiem tien khi site co traffic tu Google, nguoi doc bam affiliate links Amazon trong cac money pages, mua hang du dieu kien, va Amazon tra hoa hong theo tracking ID cua minh.
