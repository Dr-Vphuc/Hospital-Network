/*
CHA → CON
└── benhnhan
    ├── BHYT
    ├── donthuoc
    │   ├── thuoc
    │   └── chitiet_dh
    │       └── hoadon
    ├── sokhambenh
    ├── thannhan
    ├── nhapvien
    └── xuatvien

└── khoa
    ├── bacsi
    │   └── lamviec
    ├── phongbenh
    │   ├── giuong
    │   └── toanha
*/

/*
==========================
Database Table Creation Script
==========================
*/

/* =========================
   1. BENHNHAN
   ========================= */
CREATE TABLE benhnhan (
    MABN VARCHAR(50) PRIMARY KEY,
    hoten VARCHAR(255) NOT NULL,
    gioitinh VARCHAR(1) NOT NULL,
    ngaysinh DATETIME,
    sdt VARCHAR(15) NOT NULL,
    diachi VARCHAR(255),
    loaibn VARCHAR(255) NOT NULL
);

/* =========================
   2. THANNHAN
   ========================= */
CREATE TABLE thannhan (
    MABN VARCHAR(50),
    hoten VARCHAR(255) NOT NULL,
    gioitinh VARCHAR(1) NOT NULL,
    sdt VARCHAR(15) NOT NULL,
    diachi VARCHAR(255)
);

/* =========================
   3. BHYT
   ========================= */
CREATE TABLE BHYT (
    MABHYT VARCHAR(20),
    MABN VARCHAR(50),
    ngaydk DATETIME NOT NULL,
    ngayhh DATETIME NOT NULL,
    PRIMARY KEY (MABHYT, MABN)
);

/* =========================
   4. KHOA
   ========================= */
CREATE TABLE khoa (
    MAKHOA VARCHAR(50) PRIMARY KEY,
    tenkhoa VARCHAR(255) NOT NULL,
    MATRG VARCHAR(50)
);

/* =========================
   5. BACSI
   ========================= */
CREATE TABLE bacsi (
    MABS VARCHAR(50) PRIMARY KEY,
    hoten VARCHAR(255) NOT NULL,
    gioitinh VARCHAR(1) NOT NULL,
    ngaysinh DATETIME,
    sdt VARCHAR(15) NOT NULL,
    phongkham VARCHAR(255),
    bangcap VARCHAR(255) NOT NULL,
    MAKHOA VARCHAR(50) NOT NULL
);

/* =========================
   6. LAMVIEC
   ========================= */
CREATE TABLE lamviec (
    MAKHOA VARCHAR(50) NOT NULL,
    MABS VARCHAR(50) NOT NULL,
    namkn INT NOT NULL,
    PRIMARY KEY (MAKHOA, MABS)
);

/* =========================
   7. PHONGBENH
   ========================= */
CREATE TABLE phongbenh (
    MAPHG VARCHAR(50) PRIMARY KEY,
    MAKHOA VARCHAR(50) NOT NULL,
    sogiuong INT NOT NULL,
    gia FLOAT NOT NULL
);

/* =========================
   8. TOANHA
   ========================= */
CREATE TABLE toanha (
    MAKHOA VARCHAR(50) NOT NULL,
    MAPHG VARCHAR(50) NOT NULL,
    tentoa VARCHAR(255) NOT NULL,
    PRIMARY KEY (MAKHOA, MAPHG)
);

/* =========================
   9. GIUONG
   ========================= */
CREATE TABLE giuong (
    MAPHG VARCHAR(50) NOT NULL,
    so INT NOT NULL,
    tinhtrang BOOLEAN NOT NULL,
    PRIMARY KEY (MAPHG, so)
);

/* =========================
   10. NHAPVIEN
   ========================= */
CREATE TABLE nhapvien (
    MABN VARCHAR(50) NOT NULL,
    ngaynv DATETIME NOT NULL,
    MAPHG VARCHAR(50) NOT NULL,
    sogiuong INT NOT NULL,
    PRIMARY KEY (MABN, ngaynv)
);

/* =========================
   11. XUATVIEN
   ========================= */
CREATE TABLE xuatvien (
    MABN VARCHAR(50) NOT NULL,
    ngayxv DATETIME NOT NULL,
    PRIMARY KEY (MABN, ngayxv)
);

/* =========================
   12. THUOC
   ========================= */
CREATE TABLE thuoc (
    MATHUOC VARCHAR(50) PRIMARY KEY,
    tenthuoc VARCHAR(255) NOT NULL,
    congdung VARCHAR(255),
    hsd DATETIME NOT NULL,
    giatien FLOAT NOT NULL
);

/* =========================
   13. DONTHUOC
   ========================= */
CREATE TABLE donthuoc (
    MADT VARCHAR(50) PRIMARY KEY,
    MABS VARCHAR(50) NOT NULL,
    MABN VARCHAR(50) NOT NULL
);

/* =========================
   14. CHITIET_DH
   ========================= */
CREATE TABLE chitiet_dh (
    MADT VARCHAR(50) PRIMARY KEY,
    MATHUOC VARCHAR(50) NOT NULL,
    soluong INT NOT NULL,
    songayuong INT NOT NULL
);

/* =========================
   15. SOKHAMBENH
   ========================= */
CREATE TABLE sokhambenh (
    MASKB VARCHAR(50) PRIMARY KEY,
    MABN VARCHAR(50) NOT NULL,
    ngaykham DATETIME NOT NULL,
    tenbenh VARCHAR(255) NOT NULL,
    giaidoan VARCHAR(50) NOT NULL,
    tinhtrang VARCHAR(50) NOT NULL,
    MADT VARCHAR(50) NOT NULL,
    MAKHOA VARCHAR(50) NOT NULL
);

/* =========================
   16. HOADON
   ========================= */
CREATE TABLE hoadon (
    MAHD VARCHAR(50) PRIMARY KEY,
    MABHYT VARCHAR(50) NOT NULL,
    MADT VARCHAR(50) NOT NULL,
    MABN VARCHAR(50) NOT NULL,
    tongtien FLOAT NOT NULL
);

/* =========================
   17. USERS
   ========================= */
CREATE TABLE user (
    userid INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL,
    ref_id VARCHAR(50)
);


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
('BS001','Le Van Bac','M','1980-01-01','0921111111','P101','Tien si','K001'),
('BS002','Tran Thi Yen','F','1982-02-02','0922222222','P102','Thac si','K002'),
('BS003','Pham Van Khoa','M','1979-03-03','0923333333','P103','Tien si','K003'),
('BS004','Hoang Thi Lan','F','1985-04-04','0924444444','P104','Thac si','K004'),
('BS005','Nguyen Van Minh','M','1978-05-05','0925555555','P105','Tien si','K005');

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
17. USERS
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

