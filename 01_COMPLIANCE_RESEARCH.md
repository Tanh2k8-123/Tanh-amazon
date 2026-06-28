# Task 01 - Compliance Research

## Muc tieu

Nam cac quy dinh toi thieu truoc khi xay website va gan affiliate link. Task nay giup tranh cac loi co the lam mat commission, bi tu choi review hoac bi dong tai khoan Amazon Associates.

## Input

- Thi truong muc tieu: Amazon US.
- Kenh ban dau: website/blog Home/Kitchen bang tieng Anh.
- Kenh phu sau nay: YouTube, social, email opt-in, Amazon Influencer.
- Nguon chinh sach chinh thuc cua Amazon, FTC, Google.

## Output

- Mot compliance checklist dung truoc khi publish moi bai.
- Mot disclosure pattern dung cho site, bai viet va social.
- Danh sach hanh vi cam/nen tranh.
- Lich kiem tra lai chinh sach moi thang.

## Nguon can doc va bookmark

Lan doi chieu gan nhat: 2026-06-28. Amazon Associates Program Policies hien ghi `Updated: April 14, 2026`; van can review lai truoc khi apply, truoc khi them affiliate links va moi thang sau do.

| Chu de | Nguon |
| --- | --- |
| Program policies va qualifying purchases | [Amazon Associates Program Policies](https://affiliate-program.amazon.com/help/operating/policies) |
| Commission rates | [Amazon Standard Commission Income Rates](https://affiliate-program.amazon.com/help/node/topic/GRXPHT8U84RAYDXZ) |
| 3 sales / 180 days | [Amazon Account Dormancy](https://affiliate-program.amazon.com/help/node/topic/G7MJTPEP9NC3YKMG) |
| Disclosure Amazon | [Amazon Disclosure Guidance](https://affiliate-program.amazon.com/help/node/topic/GHQNZAU6669EZS98) |
| Email/SMS/social link use | [Amazon Offline Use of Associates Links and Ads](https://affiliate-program.amazon.com/help/node/topic/GQ5CMSPVXBXSFDFV) |
| FTC disclosure | [FTC Endorsement Guides FAQ](https://www.ftc.gov/business-guidance/resources/ftcs-endorsement-guides-what-people-are-asking) |
| Review content quality | [Google High Quality Reviews](https://developers.google.com/search/docs/specialty/ecommerce/write-high-quality-reviews) |
| People-first content | [Google Helpful Content](https://developers.google.com/search/docs/fundamentals/creating-helpful-content) |

## Diem Amazon can ghi nho

- Session thong thuong bat dau khi khach click Special Link va ket thuc khi xay ra mot trong cac moc: qua 24 gio, khach dat order san pham khong phai digital product, hoac khach click Special Link cua associate khac.
- Neu khach them san pham vao cart trong session, don hang can hoan tat khong muon hon 89 ngay sau click ban dau de co the du dieu kien.
- De la qualifying purchase, san pham con phai duoc shipped, streamed hoac downloaded va paid trong vong 180 ngay sau purchase.
- Sau khi apply Amazon Associates, can tao 3 qualifying sales trong 180 ngay de Amazon review application. Neu khong du, tai khoan/ID co the bi rut lai va khong reinstated.
- Commission rates thay doi theo category. Tai thoi diem lap tai lieu, Kitchen la 4.5%, Home/Furniture/Home Improvement/Lawn & Garden/Pets la 3%, All Other Categories la 4%. Luon verify lai truoc khi chon ngach.

## Disclosure bat buoc

### Site-wide Amazon statement

Dat o footer, disclosure page, About page hoac khu vuc de thay:

```text
As an Amazon Associate I earn from qualifying purchases.
```

### Disclosure dau bai viet

Dat gan dau bai, truoc affiliate link dau tien:

```text
Disclosure: This post contains affiliate links. If you buy through these links, we may earn a commission at no extra cost to you. As an Amazon Associate I earn from qualifying purchases.
```

### Disclosure gan nut/link

Dung mot nhan ngan, ro:

```text
Paid link
```

Hoac:

```text
Amazon paid affiliate link - we may earn a commission.
```

Khong dung moi nhan `Amazon affiliate link` dung mot minh neu nguoi doc co the khong hieu rang day la link co hoa hong. Nhieu truong hop nen dung disclosure day du gan nut mua hoac ngay truoc cum link san pham.

### Social/video disclosure

Disclosure phai nam trong cung medium voi recommendation. Vi du:

```text
Paid/Amazon affiliate links. As an Amazon Associate I earn from qualifying purchases.
```

Voi video, noi disclosure trong video neu recommendation bang giong noi; them vao description neu link o description.

## Paid ads, email, SMS, social

| Kenh | Nguyen tac |
| --- | --- |
| Paid search | Khong bid proprietary terms nhu Amazon/Kindle hoac misspellings. Paid ad co the gui ve site cua minh neu tuan thu Operating Agreement; khong direct/indirect redirect den Amazon. |
| Paid social | Tranh gui paid ad truc tiep den Amazon. Neu dung, gui ve landing/article tren site va disclosure ro. |
| Email/SMS | Amazon cho Special Links trong email/SMS/social neu nguoi nhan da opt-in va co cach opt-out. De giam rui ro, nguoi moi nen gui email ve bai viet tren site thay vi gan direct Amazon link trong email. |
| Social organic | Co the dung link khi disclosure ro, tai khoan/kenh duoc khai bao trong Associates Central neu can. |

## Noi dung va tai san san pham

- Khong copy thu cong anh san pham, rating, review, price tu Amazon.
- Khong hien gia Amazon neu khong co co che cap nhat hop le va duoc phep.
- Khong trich review Amazon lam noi dung bai neu khong co quyen.
- Nen dung anh tu chup, anh nha san xuat cho phep, media kit, anh stock phu hop, hoac Product Advertising API/cac cong cu Amazon hop le khi du dieu kien.
- Neu chua so huu san pham, phai noi ro methodology: research tu specs, manual, review pattern, comparison table, user needs. Tot nhat uu tien san pham co the mua/test hoac muon/test thuc te.

## SOP compliance truoc khi publish

1. Xac dinh bai co affiliate link hay khong.
2. Them disclosure dau bai neu co affiliate link.
3. Them Amazon site-wide statement vao footer va disclosure page.
4. Dam bao moi CTA/nut mua co nhan ro la affiliate/paid link khi can.
5. Kiem tra link khong bi cloak/redirect gay hieu nham.
6. Kiem tra khong co gia, rating, review Amazon copy thu cong.
7. Kiem tra anh co nguon hop le.
8. Kiem tra bai co gia tri rieng: trai nghiem, tieu chi, so sanh, do luong, khuyen nghi theo use case.
9. Ghi ngay publish va nguon san pham vao content log.
10. Review lai bai sau 30-60 ngay de cap nhat san pham/link/disclosure.

## Checklist

- [ ] Bookmark tat ca nguon chinh sach trong file nay.
- [ ] Tao trang `Affiliate Disclosure`.
- [ ] Them Amazon statement chinh xac vao footer hoac site-wide area.
- [ ] Tao disclosure block de copy vao moi bai affiliate.
- [ ] Tao tracking sheet cot `source_of_images`, `affiliate_links_checked`, `last_policy_review`.
- [ ] Viet rule noi bo: khong copy price/rating/reviews/images tu Amazon thu cong.
- [ ] Dat lich review chinh sach Amazon moi thang.

## KPI

| KPI | Muc tieu |
| --- | --- |
| Compliance incidents | 0 |
| Bai affiliate co disclosure dau bai | 100% |
| Link Amazon duoc kiem tra truoc publish | 100% |
| Anh co nguon hop le | 100% |
| Policy review cadence | 1 lan/thang |

## Tieu chi done

- Co disclosure text chuan trong [10_TEMPLATES.md](10_TEMPLATES.md).
- Co checklist compliance trong publishing workflow.
- Co trang disclosure trong website plan.
- Co quy tac ro ve paid ads, email/SMS/social, image/review/price usage.
