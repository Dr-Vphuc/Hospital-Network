/* 
===========================================================
Database Schema Diagram
===========================================================

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
===========================================================
 */


/* =========================
   0. BẢNG BENHNHAN
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
   1. BẢNG THANHNHAN
   ========================= */
CREATE TABLE thannhan (
    MABN VARCHAR(50),
    hoten VARCHAR(255) NOT NULL,
    gioitinh VARCHAR(1) NOT NULL,
    sdt VARCHAR(15) NOT NULL,
    diachi VARCHAR(255),
    CONSTRAINT fk_thannhan_benhnhan
        FOREIGN KEY (MABN) REFERENCES benhnhan(MABN)
);

/* =========================
   2. BẢNG BHYT
   ========================= */
CREATE TABLE BHYT (
    MABHYT VARCHAR(20),
    MABN VARCHAR(50),
    ngaydk DATETIME NOT NULL,
    ngayhh DATETIME NOT NULL,
    PRIMARY KEY (MABHYT, MABN),
    CONSTRAINT fk_bhyt_benhnhan
        FOREIGN KEY (MABN) REFERENCES benhnhan(MABN)
);

/* =========================
   3. BẢNG KHOA
   ========================= */
CREATE TABLE khoa (
    MAKHOA VARCHAR(50) PRIMARY KEY,
    tenkhoa VARCHAR(255) NOT NULL,
    MATRG VARCHAR(50) NOT NULL
);

/* =========================
   4. BẢNG BACSI
   ========================= */
CREATE TABLE bacsi (
    MABS VARCHAR(50) PRIMARY KEY,
    hoten VARCHAR(255) NOT NULL,
    gioitinh VARCHAR(1) NOT NULL,
    ngaysinh DATETIME,
    sdt VARCHAR(15) NOT NULL,
    phongkham VARCHAR(255),
    bangcap VARCHAR(255) NOT NULL,
    MAKHOA VARCHAR(50) NOT NULL,
    CONSTRAINT fk_bacsi_khoa
        FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA)
);

ALTER TABLE khoa
ADD CONSTRAINT fk_khoa_truongkhoa
FOREIGN KEY (MATRG) REFERENCES bacsi(MABS);

/* =========================
   5. BẢNG LAMVIEC
   ========================= */
CREATE TABLE lamviec (
    MAKHOA VARCHAR(50) NOT NULL,
    MABS VARCHAR(50) NOT NULL,
    namkn INT NOT NULL,
    PRIMARY KEY (MAKHOA, MABS),
    CONSTRAINT fk_lamviec_khoa
        FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA),
    CONSTRAINT fk_lamviec_bacsi
        FOREIGN KEY (MABS) REFERENCES bacsi(MABS)
);

/* =========================
   6. BẢNG PHONGBENH
   ========================= */
CREATE TABLE phongbenh (
    MAPHG VARCHAR(50) PRIMARY KEY,
    MAKHOA VARCHAR(50) NOT NULL,
    sogiuong INT NOT NULL,
    gia FLOAT NOT NULL,
    CONSTRAINT fk_phongbenh_khoa
        FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA)
);

/* =========================
   7. BẢNG TOANHA
   ========================= */
CREATE TABLE toanha (
    MAKHOA VARCHAR(50) NOT NULL,
    MAPHG VARCHAR(50) NOT NULL,
    tentoa VARCHAR(255) NOT NULL,
    PRIMARY KEY (MAKHOA, MAPHG),
    CONSTRAINT fk_toanha_khoa
        FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA),
    CONSTRAINT fk_toanha_phongbenh
        FOREIGN KEY (MAPHG) REFERENCES phongbenh(MAPHG)
);

/* =========================
   8. BẢNG GIUONG
   ========================= */
CREATE TABLE giuong (
    MAPHG VARCHAR(50) NOT NULL,
    so INT NOT NULL,
    tinhtrang BOOLEAN NOT NULL,
    PRIMARY KEY (MAPHG, so),
    CONSTRAINT fk_giuong_phongbenh
        FOREIGN KEY (MAPHG) REFERENCES phongbenh(MAPHG)
);

/* =========================
   9. BẢNG NHAPVIEN
   ========================= */
CREATE TABLE nhapvien (
    MABN VARCHAR(50) NOT NULL,
    ngaynv DATETIME NOT NULL,
    MAPHG VARCHAR(50) NOT NULL,
    sogiuong INT NOT NULL,
    PRIMARY KEY (MABN, ngaynv),
    CONSTRAINT fk_nhapvien_benhnhan
        FOREIGN KEY (MABN) REFERENCES benhnhan(MABN),
    CONSTRAINT fk_nhapvien_phongbenh
        FOREIGN KEY (MAPHG) REFERENCES phongbenh(MAPHG)
);

/* =========================
   10. BẢNG XUATVIEN
   ========================= */
CREATE TABLE xuatvien (
    MABN VARCHAR(50) NOT NULL,
    ngayxv DATETIME NOT NULL,
    PRIMARY KEY (MABN, ngayxv),
    CONSTRAINT fk_xuatvien_benhnhan
        FOREIGN KEY (MABN) REFERENCES benhnhan(MABN)
);

/* =========================
   11. BẢNG THUOC
   ========================= */
CREATE TABLE thuoc (
    MATHUOC VARCHAR(50) PRIMARY KEY,
    tenthuoc VARCHAR(255) NOT NULL,
    congdung VARCHAR(255),
    hsd DATETIME NOT NULL,
    giatien FLOAT NOT NULL
);

/* =========================
   12. BẢNG DONTHUOC
   ========================= */
CREATE TABLE donthuoc (
    MADT VARCHAR(50) PRIMARY KEY,
    MABS VARCHAR(50) NOT NULL,
    MABN VARCHAR(50) NOT NULL,
    CONSTRAINT fk_donthuoc_bacsi
        FOREIGN KEY (MABS) REFERENCES bacsi(MABS),
    CONSTRAINT fk_donthuoc_benhnhan
        FOREIGN KEY (MABN) REFERENCES benhnhan(MABN)
);

/* =========================
   13. BẢNG CHITIET_DH
   ========================= */
CREATE TABLE chitiet_dh (
    MADT VARCHAR(50) PRIMARY KEY,
    MATHUOC VARCHAR(50) NOT NULL,
    soluong INT NOT NULL,
    songayuong INT NOT NULL,
    CONSTRAINT fk_ctdh_donthuoc
        FOREIGN KEY (MADT) REFERENCES donthuoc(MADT),
    CONSTRAINT fk_ctdh_thuoc
        FOREIGN KEY (MATHUOC) REFERENCES thuoc(MATHUOC)
);

/* =========================
   14. BẢNG SOKHAMBENH
   ========================= */
CREATE TABLE sokhambenh (
    MASKB VARCHAR(50) PRIMARY KEY,
    MABN VARCHAR(50) NOT NULL,
    ngaykham DATETIME NOT NULL,
    tenbenh VARCHAR(255) NOT NULL,
    giaidoan VARCHAR(50) NOT NULL,
    tinhtrang VARCHAR(50) NOT NULL,
    MADT VARCHAR(50) NOT NULL,
    MAKHOA VARCHAR(50) NOT NULL,
    CONSTRAINT fk_skb_benhnhan
        FOREIGN KEY (MABN) REFERENCES benhnhan(MABN),
    CONSTRAINT fk_skb_donthuoc
        FOREIGN KEY (MADT) REFERENCES donthuoc(MADT),
    CONSTRAINT fk_skb_khoa
        FOREIGN KEY (MAKHOA) REFERENCES khoa(MAKHOA)
);

/* =========================
   15. BẢNG HOADON
   ========================= */
CREATE TABLE hoadon (
    MAHD VARCHAR(50) PRIMARY KEY,
    MABHYT VARCHAR(50) NOT NULL,
    MADT VARCHAR(50) NOT NULL,
    MABN VARCHAR(50) NOT NULL,
    tongtien FLOAT NOT NULL,
    CONSTRAINT fk_hoadon_bhyt
        FOREIGN KEY (MABHYT) REFERENCES BHYT(MABHYT),
    CONSTRAINT fk_hoadon_chitiet
        FOREIGN KEY (MADT) REFERENCES chitiet_dh(MADT),
    CONSTRAINT fk_hoadon_benhnhan
        FOREIGN KEY (MABN) REFERENCES benhnhan(MABN)
);
