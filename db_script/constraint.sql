/*
==========================
Apply Foreign Keys
==========================
*/

/* =========================
1. THANNHAN → BENHNHAN
========================= */
ALTER TABLE thannhan
ADD CONSTRAINT fk_thannhan_benhnhan
FOREIGN KEY (MABN) REFERENCES benhnhan(MABN);

/* =========================
2. BHYT → BENHNHAN
========================= */
ALTER TABLE BHYT
ADD CONSTRAINT fk_bhyt_benhnhan
FOREIGN KEY (MABN) REFERENCES benhnhan(MABN);

/* =========================
3. BACSI → KHOA
========================= */
ALTER TABLE bacsi
ADD CONSTRAINT fk_bacsi_khoa
FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA);

/* =========================
4. KHOA → BACSI (TRUONG KHOA)
========================= */
ALTER TABLE khoa
ADD CONSTRAINT fk_khoa_truongkhoa
FOREIGN KEY (MATRG) REFERENCES bacsi(MABS);

/* =========================
5. LAMVIEC → KHOA, BACSI
========================= */
ALTER TABLE lamviec
ADD CONSTRAINT fk_lamviec_khoa
FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA);

ALTER TABLE lamviec
ADD CONSTRAINT fk_lamviec_bacsi
FOREIGN KEY (MABS) REFERENCES bacsi(MABS);

/* =========================
6. PHONGBENH → KHOA
========================= */
ALTER TABLE phongbenh
ADD CONSTRAINT fk_phongbenh_khoa
FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA);

/* =========================
7. TOANHA → KHOA, PHONGBENH
========================= */
ALTER TABLE toanha
ADD CONSTRAINT fk_toanha_khoa
FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA);

ALTER TABLE toanha
ADD CONSTRAINT fk_toanha_phongbenh
FOREIGN KEY (MAPHG) REFERENCES phongbenh(MAPHG);

/* =========================
8. GIUONG → PHONGBENH
========================= */
ALTER TABLE giuong
ADD CONSTRAINT fk_giuong_phongbenh
FOREIGN KEY (MAPHG) REFERENCES phongbenh(MAPHG);

/* =========================
9. NHAPVIEN → BENHNHAN, PHONGBENH
========================= */
ALTER TABLE nhapvien
ADD CONSTRAINT fk_nhapvien_benhnhan
FOREIGN KEY (MABN) REFERENCES benhnhan(MABN);

ALTER TABLE nhapvien
ADD CONSTRAINT fk_nhapvien_phongbenh
FOREIGN KEY (MAPHG) REFERENCES phongbenh(MAPHG);

/* =========================
10. XUATVIEN → BENHNHAN
========================= */
ALTER TABLE xuatvien
ADD CONSTRAINT fk_xuatvien_benhnhan
FOREIGN KEY (MABN) REFERENCES benhnhan(MABN);

/* =========================
11. DONTHUOC → BACSI, BENHNHAN
========================= */
ALTER TABLE donthuoc
ADD CONSTRAINT fk_donthuoc_bacsi
FOREIGN KEY (MABS) REFERENCES bacsi(MABS);

ALTER TABLE donthuoc
ADD CONSTRAINT fk_donthuoc_benhnhan
FOREIGN KEY (MABN) REFERENCES benhnhan(MABN);

/* =========================
12. CHITIET_DH → DONTHUOC, THUOC
========================= */
ALTER TABLE chitiet_dh
ADD CONSTRAINT fk_ctdh_donthuoc
FOREIGN KEY (MADT) REFERENCES donthuoc(MADT);

ALTER TABLE chitiet_dh
ADD CONSTRAINT fk_ctdh_thuoc
FOREIGN KEY (MATHUOC) REFERENCES thuoc(MATHUOC);

/* =========================
13. SOKHAMBENH → BENHNHAN, DONTHUOC, KHOA
========================= */
ALTER TABLE sokhambenh
ADD CONSTRAINT fk_skb_benhnhan
FOREIGN KEY (MABN) REFERENCES benhnhan(MABN);

ALTER TABLE sokhambenh
ADD CONSTRAINT fk_skb_donthuoc
FOREIGN KEY (MADT) REFERENCES donthuoc(MADT);

ALTER TABLE sokhambenh
ADD CONSTRAINT fk_skb_khoa
FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA);

/* =========================
14. HOADON → BHYT, CHITIET_DH, BENHNHAN
========================= */
ALTER TABLE hoadon
ADD CONSTRAINT fk_hoadon_bhyt
FOREIGN KEY (MABHYT) REFERENCES BHYT(MABHYT);

ALTER TABLE hoadon
ADD CONSTRAINT fk_hoadon_chitiet
FOREIGN KEY (MADT) REFERENCES chitiet_dh(MADT);

ALTER TABLE hoadon
ADD CONSTRAINT fk_hoadon_benhnhan
FOREIGN KEY (MABN) REFERENCES benhnhan(MABN);

/* =========================
15. Add Foreign Keys to bacsi table, benhnhan table to users table
========================= */
ALTER TABLE bacsi
ADD CONSTRAINT fk_bacsi_user
FOREIGN KEY (MABS) REFERENCES user(username);

ALTER TABLE benhnhan
ADD CONSTRAINT fk_benhnhan_user
FOREIGN KEY (MABN) REFERENCES user(username);

/* =========================
16. Add Foreign Keys soluongthuoc → thuoc
========================= */
ALTER TABLE soluongthuoc
ADD CONSTRAINT fk_soluongthuoc_thuoc
FOREIGN KEY (MATHUOC) REFERENCES thuoc(MATHUOC);