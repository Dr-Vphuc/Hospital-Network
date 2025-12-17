/*
==========================
Insert Sample Data Script
==========================
*/

/* =========================
1. BENHNHAN
========================= */
INSERT INTO benhnhan VALUES
('BN001','Nguyen Van A','M','1995-01-01','0901111111','Ha Noi','Noi tru'),
('BN002','Tran Thi B','F','1998-02-02','0902222222','TP HCM','Ngoai tru'),
('BN003','Le Van C','M','2000-03-03','0903333333','Da Nang','Noi tru'),
('BN004','Pham Thi D','F','1997-04-04','0904444444','Can Tho','Ngoai tru'),
('BN005','Hoang Van E','M','1992-05-05','0905555555','Hai Phong','Noi tru');

/* =========================
2. THANNHAN
========================= */
INSERT INTO thannhan VALUES
('BN001','Nguyen Thi Me','F','0911111111','Ha Noi'),
('BN002','Tran Van Bo','M','0912222222','TP HCM'),
('BN003','Le Thi Chi','F','0913333333','Da Nang'),
('BN004','Pham Van Em','M','0914444444','Can Tho'),
('BN005','Hoang Thi Di','F','0915555555','Hai Phong');

/* =========================
3. BHYT
========================= */
INSERT INTO BHYT VALUES
('BHYT001','BN001','2024-01-01','2026-01-01'),
('BHYT002','BN002','2024-02-01','2026-02-01'),
('BHYT003','BN003','2024-03-01','2026-03-01'),
('BHYT004','BN004','2024-04-01','2026-04-01'),
('BHYT005','BN005','2024-05-01','2026-05-01');

/* =========================
4. KHOA
========================= */
INSERT INTO khoa VALUES
('K001','Noi tong hop','BS001'),
('K002','Ngoai tong hop','BS002'),
('K003','San','BS003'),
('K004','Nhi','BS004'),
('K005','Tim mach','BS005');

/* =========================
5. BACSI
========================= */
INSERT INTO bacsi VALUES
('BS001','Le Van Bac','M','1980-01-01','0921111111','P101','Tien si','K001', TRUE),
('BS002','Tran Thi Yen','F','1982-02-02','0922222222','P102','Thac si','K002', TRUE),
('BS003','Pham Van Khoa','M','1979-03-03','0923333333','P103','Tien si','K003', FALSE),
('BS004','Hoang Thi Lan','F','1985-04-04','0924444444','P104','Thac si','K004', TRUE),
('BS005','Nguyen Van Minh','M','1978-05-05','0925555555','P105','Tien si','K005', FALSE);

/* =========================
6. LAMVIEC
========================= */
INSERT INTO lamviec VALUES
('K001','BS001',10),
('K002','BS002',8),
('K003','BS003',12),
('K004','BS004',6),
('K005','BS005',15);

/* =========================
7. PHONGBENH
========================= */
INSERT INTO phongbenh VALUES
('P001','K001',10,300000),
('P002','K002',8,350000),
('P003','K003',12,400000),
('P004','K004',6,250000),
('P005','K005',15,500000);

/* =========================
8. TOANHA
========================= */
INSERT INTO toanha VALUES
('K001','P001','Toa A'),
('K002','P002','Toa B'),
('K003','P003','Toa C'),
('K004','P004','Toa D'),
('K005','P005','Toa E');

/* =========================
9. GIUONG
========================= */
INSERT INTO giuong VALUES
('P001',1,1),
('P001',2,0),
('P002',1,1),
('P003',1,1),
('P004',1,0);

/* =========================
10. NHAPVIEN
========================= */
INSERT INTO nhapvien VALUES
('BN001','2025-01-01','P001',1),
('BN002','2025-01-02','P002',1),
('BN003','2025-01-03','P003',2),
('BN004','2025-01-04','P004',1),
('BN005','2025-01-05','P005',3);

/* =========================
11. XUATVIEN
========================= */
INSERT INTO xuatvien VALUES
('BN001','2025-01-10'),
('BN002','2025-01-11'),
('BN003','2025-01-12'),
('BN004','2025-01-13'),
('BN005','2025-01-14');

/* =========================
12. THUOC
========================= */
INSERT INTO thuoc VALUES
('T001','Paracetamol','Giam dau ha sot','2026-12-31',5000),
('T002','Amoxicillin','Khang sinh','2027-06-30',8000),
('T003','Vitamin C','Tang suc de khang','2027-03-15',3000),
('T004','Ibuprofen','Giam dau','2026-09-20',7000),
('T005','Oresol','Bu nuoc','2026-08-10',2000);

/* =========================
13. DONTHUOC
========================= */
INSERT INTO donthuoc VALUES
('DT001','BS001','BN001'),
('DT002','BS002','BN002'),
('DT003','BS003','BN003'),
('DT004','BS004','BN004'),
('DT005','BS005','BN005');

/* =========================
14. CHITIET_DH
========================= */
INSERT INTO chitiet_dh VALUES
('DT001','T001',10,5),
('DT002','T002',7,7),
('DT003','T003',14,7),
('DT004','T004',6,3),
('DT005','T005',5,2);

/* =========================
15. SOKHAMBENH
========================= */
INSERT INTO sokhambenh VALUES
('SKB001','BN001','2025-01-01','Cum','Dieu tri','Tich cuc','DT001','K001'),
('SKB002','BN002','2025-01-02','Viem hong','Tai dieu tri','On dinh','DT002','K002'),
('SKB003','BN003','2025-01-03','Dau bung','Dieu tri','Tich cuc','DT003','K003'),
('SKB004','BN004','2025-01-04','Sot sieu vi','Dieu tri','Tieu cuc','DT004','K004'),
('SKB005','BN005','2025-01-05','Tim mach','Theo doi','On dinh','DT005','K005');

/* =========================
16. HOADON
========================= */
INSERT INTO hoadon VALUES
('HD001','BHYT001','DT001','BN001',150000),
('HD002','BHYT002','DT002','BN002',200000),
('HD003','BHYT003','DT003','BN003',180000),
('HD004','BHYT004','DT004','BN004',220000),
('HD005','BHYT005','DT005','BN005',300000);

/* =========================
17. SOLUONGTHUOC
========================= */
INSERT into soluongthuoc VALUES
('T001', 100),
('T002', 150),
('T003', 200),
('T004', 120),
('T005', 180);

/* =========================
18. USERS
========================= */
INSERT INTO user (username, password, role, ref_id) VALUES
('bs001', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS001'),
('bs002', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS002'),
('bs003', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS003'),
('bs004', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS004'),
('bs005', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS005');

INSERT INTO user (username, password, role, ref_id) VALUES
('bn001', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN001'),
('bn002', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN002'),
('bn003', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN003'),
('bn004', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN004'),
('bn005', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN005');

