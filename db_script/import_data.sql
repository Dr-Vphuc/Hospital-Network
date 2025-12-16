/* =========================
   TAT KIEM TRA KHOA NGOAI
   ========================= */
SET FOREIGN_KEY_CHECKS = 0;

/* =========================
   1. BENHNHAN
   ========================= */
INSERT INTO benhnhan VALUES
('BN001', 'Nguyen Van A', 'M', '1999-05-10', '0901111111', 'Ha Noi', 'Noi tru'),
('BN002', 'Tran Thi B', 'F', '2001-08-20', '0902222222', 'TP HCM', 'Ngoai tru');

/* =========================
   2. KHOA
   ========================= */
INSERT INTO khoa VALUES
('K001', 'Noi tong hop', 'BS001'),
('K002', 'Ngoai tong hop', 'BS002');

/* =========================
   3. THUOC
   ========================= */
INSERT INTO thuoc VALUES
('T001', 'Paracetamol', 'Ha sot giam dau', '2026-12-31', 5000),
('T002', 'Amoxicillin', 'Khang sinh', '2027-06-30', 8000);

/* =========================
   4. BACSI
   ========================= */
INSERT INTO bacsi VALUES
('BS001', 'Le Van Bac Si', 'M', '1980-01-01', '0911111111', 'Phong 101', 'Tien si', 'K001'),
('BS002', 'Pham Thi Y', 'F', '1985-03-12', '0922222222', 'Phong 102', 'Thac si', 'K002');

/* =========================
   5. BHYT
   ========================= */
INSERT INTO BHYT VALUES
('BHYT001', 'BN001', '2024-01-01', '2026-01-01'),
('BHYT002', 'BN002', '2024-02-01', '2026-02-01');

/* =========================
   6. PHONGBENH
   ========================= */
INSERT INTO phongbenh VALUES
('P001', 'K001', 10, 300000),
('P002', 'K002', 8, 400000);

/* =========================
   7. LAMVIEC
   ========================= */
INSERT INTO lamviec VALUES
('K001', 'BS001', 10),
('K002', 'BS002', 8);

/* =========================
   8. TOANHA
   ========================= */
INSERT INTO toanha VALUES
('K001', 'P001', 'Toa A'),
('K002', 'P002', 'Toa B');

/* =========================
   9. GIUONG
   ========================= */
INSERT INTO giuong VALUES
('P001', 1, 1),
('P001', 2, 0),
('P002', 1, 1);

/* =========================
   10. DONTHUOC
   ========================= */
INSERT INTO donthuoc VALUES
('DT001', 'BS001', 'BN001'),
('DT002', 'BS002', 'BN002');

/* =========================
   11. CHITIET_DH
   ========================= */
INSERT INTO chitiet_dh VALUES
('DT001', 'T001', 10, 5),
('DT002', 'T002', 7, 7);

/* =========================
   12. SOKHAMBENH
   ========================= */
INSERT INTO sokhambenh VALUES
('SKB001', 'BN001', '2025-01-01', 'Cam cum', 'Dieu tri', 'Tich cuc', 'DT001', 'K001'),
('SKB002', 'BN002', '2025-01-02', 'Viem hong', 'Tai dieu tri', 'On dinh', 'DT002', 'K002');

/* =========================
   13. NHAPVIEN
   ========================= */
INSERT INTO nhapvien VALUES
('BN001', '2025-01-01', 'P001', 1);

/* =========================
   14. XUATVIEN
   ========================= */
INSERT INTO xuatvien VALUES
('BN001', '2025-01-10');

/* =========================
   15. HOADON
   ========================= */
INSERT INTO hoadon VALUES
('HD001', 'BHYT001', 'DT001', 'BN001', 150000);

/* =========================
   BAT LAI KHOA NGOAI
   ========================= */
SET FOREIGN_KEY_CHECKS = 1;
