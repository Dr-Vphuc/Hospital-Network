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
    MAKHOA VARCHAR(50) NOT NULL,
    trangthai BOOLEAN DEFAULT TRUE
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
   17. SOLUONGTHUOC
   ========================= */
CREATE Table soluongthuoc (
    MATHUOC VARCHAR(50) PRIMARY KEY,
    soluong INT NOT NULL
);

/* =========================
   18. USERS
   ========================= */
CREATE TABLE user (
    userid INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL,
    ref_id VARCHAR(50)
);






