-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2025 lúc 11:29 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hospital`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bacsi`
--

CREATE TABLE `bacsi` (
  `MABS` varchar(50) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` varchar(1) NOT NULL,
  `ngaysinh` datetime DEFAULT NULL,
  `sdt` varchar(15) NOT NULL,
  `phongkham` varchar(255) DEFAULT NULL,
  `bangcap` varchar(255) NOT NULL,
  `MAKHOA` varchar(50) NOT NULL,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bacsi`
--

INSERT INTO `bacsi` (`MABS`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `phongkham`, `bangcap`, `MAKHOA`, `trangthai`) VALUES
('BS001', 'Le Van Bac', 'M', '1980-01-01 00:00:00', '0921111111', 'P101', 'Tien si', 'K001', 1),
('BS002', 'Tran Thi Yen', 'F', '1982-02-02 00:00:00', '0922222222', 'P102', 'Thac si', 'K002', 1),
('BS003', 'Pham Van Khoa', 'M', '1979-03-03 00:00:00', '0923333333', 'P103', 'Tien si', 'K003', 0),
('BS004', 'Hoang Thi Lan', 'F', '1985-04-04 00:00:00', '0924444444', 'P104', 'Thac si', 'K004', 1),
('BS005', 'Nguyen Van Minh', 'M', '1978-05-05 00:00:00', '0925555555', 'P105', 'Tien si', 'K005', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benhnhan`
--

CREATE TABLE `benhnhan` (
  `MABN` varchar(50) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` varchar(1) NOT NULL,
  `ngaysinh` datetime DEFAULT NULL,
  `sdt` varchar(15) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `loaibn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `benhnhan`
--

INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES
('BN001', 'Nguyen Van A', 'M', '1995-01-01 00:00:00', '0901111111', 'Ha Noi', 'Noi tru'),
('BN002', 'Tran Thi B', 'F', '1998-02-02 00:00:00', '0902222222', 'TP HCM', 'Ngoai tru'),
('BN003', 'Le Van C', 'M', '2000-03-03 00:00:00', '0903333333', 'Da Nang', 'Noi tru'),
('BN004', 'Pham Thi D', 'F', '1997-04-04 00:00:00', '0904444444', 'Can Tho', 'Ngoai tru'),
('BN005', 'Hoang Van E', 'M', '1992-05-05 00:00:00', '0905555555', 'Hai Phong', 'Noi tru');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bhyt`
--

CREATE TABLE `bhyt` (
  `MABHYT` varchar(20) NOT NULL,
  `MABN` varchar(50) NOT NULL,
  `ngaydk` datetime NOT NULL,
  `ngayhh` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bhyt`
--

INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES
('BHYT001', 'BN001', '2024-01-01 00:00:00', '2026-01-01 00:00:00'),
('BHYT002', 'BN002', '2024-02-01 00:00:00', '2026-02-01 00:00:00'),
('BHYT003', 'BN003', '2024-03-01 00:00:00', '2026-03-01 00:00:00'),
('BHYT004', 'BN004', '2024-04-01 00:00:00', '2026-04-01 00:00:00'),
('BHYT005', 'BN005', '2024-05-01 00:00:00', '2026-05-01 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_dh`
--

CREATE TABLE `chitiet_dh` (
  `MADT` varchar(50) NOT NULL,
  `MATHUOC` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `songayuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_dh`
--

INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES
('DT001', 'T001', 10, 5),
('DT002', 'T002', 7, 7),
('DT003', 'T003', 14, 7),
('DT004', 'T004', 6, 3),
('DT005', 'T005', 5, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donthuoc`
--

CREATE TABLE `donthuoc` (
  `MADT` varchar(50) NOT NULL,
  `MABS` varchar(50) NOT NULL,
  `MABN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donthuoc`
--

INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES
('DT001', 'BS001', 'BN001'),
('DT002', 'BS002', 'BN002'),
('DT003', 'BS003', 'BN003'),
('DT004', 'BS004', 'BN004'),
('DT005', 'BS005', 'BN005');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giuong`
--

CREATE TABLE `giuong` (
  `MAPHG` varchar(50) NOT NULL,
  `so` int(11) NOT NULL,
  `tinhtrang` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giuong`
--

INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES
('P001', 1, 1),
('P001', 2, 0),
('P002', 1, 1),
('P003', 1, 1),
('P004', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MAHD` varchar(50) NOT NULL,
  `MABHYT` varchar(50) NOT NULL,
  `MADT` varchar(50) NOT NULL,
  `MABN` varchar(50) NOT NULL,
  `tongtien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES
('HD001', 'BHYT001', 'DT001', 'BN001', 150000),
('HD002', 'BHYT002', 'DT002', 'BN002', 200000),
('HD003', 'BHYT003', 'DT003', 'BN003', 180000),
('HD004', 'BHYT004', 'DT004', 'BN004', 220000),
('HD005', 'BHYT005', 'DT005', 'BN005', 300000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `MAKHOA` varchar(50) NOT NULL,
  `tenkhoa` varchar(255) NOT NULL,
  `MATRG` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES
('K001', 'Noi tong hop', 'BS001'),
('K002', 'Ngoai tong hop', 'BS002'),
('K003', 'San', 'BS003'),
('K004', 'Nhi', 'BS004'),
('K005', 'Tim mach', 'BS005');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lamviec`
--

CREATE TABLE `lamviec` (
  `MAKHOA` varchar(50) NOT NULL,
  `MABS` varchar(50) NOT NULL,
  `namkn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lamviec`
--

INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES
('K001', 'BS001', 10),
('K002', 'BS002', 8),
('K003', 'BS003', 12),
('K004', 'BS004', 6),
('K005', 'BS005', 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhapvien`
--

CREATE TABLE `nhapvien` (
  `MABN` varchar(50) NOT NULL,
  `ngaynv` datetime NOT NULL,
  `MAPHG` varchar(50) NOT NULL,
  `sogiuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhapvien`
--

INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES
('BN001', '2025-12-01 00:00:00', 'P001', 1),
('BN002', '2025-12-01 00:00:00', 'P002', 1),
('BN003', '2025-11-01 00:00:00', 'P003', 2),
('BN004', '2025-11-01 00:00:00', 'P004', 1),
('BN005', '2025-11-01 00:00:00', 'P005', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongbenh`
--

CREATE TABLE `phongbenh` (
  `MAPHG` varchar(50) NOT NULL,
  `MAKHOA` varchar(50) NOT NULL,
  `sogiuong` int(11) NOT NULL,
  `gia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phongbenh`
--

INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES
('P001', 'K001', 10, 300000),
('P002', 'K002', 8, 350000),
('P003', 'K003', 12, 400000),
('P004', 'K004', 6, 250000),
('P005', 'K005', 15, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sokhambenh`
--

CREATE TABLE `sokhambenh` (
  `MASKB` varchar(50) NOT NULL,
  `MABN` varchar(50) NOT NULL,
  `ngaykham` datetime NOT NULL,
  `tenbenh` varchar(255) NOT NULL,
  `giaidoan` varchar(50) NOT NULL,
  `tinhtrang` varchar(50) NOT NULL,
  `MADT` varchar(50) NOT NULL,
  `MAKHOA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sokhambenh`
--

INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES
('SKB001', 'BN001', '2025-01-01 00:00:00', 'Cum', 'Dieu tri', 'Tich cuc', 'DT001', 'K001'),
('SKB002', 'BN002', '2025-01-02 00:00:00', 'Viem hong', 'Tai dieu tri', 'On dinh', 'DT002', 'K002'),
('SKB003', 'BN003', '2025-12-18 00:00:00', 'Dau bung', 'Dieu tri', 'Tich cuc', 'DT003', 'K003'),
('SKB004', 'BN004', '2025-12-18 00:00:00', 'Sot sieu vi', 'Dieu tri', 'Tieu cuc', 'DT004', 'K004'),
('SKB005', 'BN005', '2025-12-18 00:00:00', 'Tim mach', 'Theo doi', 'On dinh', 'DT005', 'K005');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `soluongthuoc`
--

CREATE TABLE `soluongthuoc` (
  `MALO` int(11) NOT NULL,
  `MATHUOC` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hsd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `soluongthuoc`
--

INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES
(1, 'T001', 100, '2026-12-31 00:00:00'),
(2, 'T002', 150, '2027-06-30 00:00:00'),
(3, 'T003', 200, '2027-03-15 00:00:00'),
(4, 'T004', 120, '2026-09-20 00:00:00'),
(5, 'T005', 180, '2026-08-10 00:00:00');
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thannhan`
--

CREATE TABLE `thannhan` (
  `MABN` varchar(50) DEFAULT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` varchar(1) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thannhan`
--

INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES
('BN001', 'Nguyen Thi Me', 'F', '0911111111', 'Ha Noi'),
('BN002', 'Tran Van Bo', 'M', '0912222222', 'TP HCM'),
('BN003', 'Le Thi Chi', 'F', '0913333333', 'Da Nang'),
('BN004', 'Pham Van Em', 'M', '0914444444', 'Can Tho'),
('BN005', 'Hoang Thi Di', 'F', '0915555555', 'Hai Phong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc`
--

CREATE TABLE `thuoc` (
  `MATHUOC` varchar(50) NOT NULL,
  `tenthuoc` varchar(255) NOT NULL,
  `congdung` varchar(255) DEFAULT NULL,
  `giatien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thuoc`
--

INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES
('T001', 'Paracetamol', 'Giam dau ha sot', 5000),
('T002', 'Amoxicillin', 'Khang sinh', 8000),
('T003', 'Vitamin C', 'Tang suc de khang', 3000),
('T004', 'Ibuprofen', 'Giam dau', 7000),
('T005', 'Oresol', 'Bu nuoc', 2000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toanha`
--

CREATE TABLE `toanha` (
  `MAKHOA` varchar(50) NOT NULL,
  `MAPHG` varchar(50) NOT NULL,
  `tentoa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `toanha`
--

INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES
('K001', 'P001', 'Toa A'),
('K002', 'P002', 'Toa B'),
('K003', 'P003', 'Toa C'),
('K004', 'P004', 'Toa D'),
('K005', 'P005', 'Toa E');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `ref_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES
(1, 'bs001', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS001'),
(2, 'bs002', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS002'),
(3, 'bs003', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS003'),
(4, 'bs004', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS004'),
(5, 'bs005', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BACSI', 'BS005'),
(6, 'bn001', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN001'),
(7, 'bn002', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN002'),
(8, 'bn003', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN003'),
(9, 'bn004', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN004'),
(10, 'bn005', '$2b$12$eIXhD1YwFzQkLQ9R0O6B8e1Y6uJp9gE5MZkXGQn0qj2FhQZ3BvZ9K', 'BENHNHAN', 'BN005'),
(12, '23001547', 'scrypt:32768:8:1$a70RXCFqv8pM1UxB$080cdf06aba36c5711263a9c85ca5b5d4c871b02166e20e247e4f51d0ec520f868ddda65c9c7ba8237f7784cacf9d232ce751651cd12bb4d876b64ae6a77e439', 'user', NULL),
(13, '23000137', 'scrypt:32768:8:1$LApEKYjxOfFBUP35$b22b1cdcb800823aff720fcc3d1cbed6dd3908d820a440911e85eb8b0bdd6887ba8ee5bb08586dad861661259286d9dd0d736ae029e0f226c4db07e1e033c555', 'USER', NULL),
(14, '11', 'scrypt:32768:8:1$MJdJR0DL8Gf9581m$a451154a431ad53184c3fe7963e18c1c6e00ecf67a4999389bf7f68db13794f7c28302726c44a638f848ef867866d73d34880beb7f67ecdee6a07a14923baed7', 'USER', NULL),
(15, '12', 'scrypt:32768:8:1$plZEJokcvjhfv7dZ$a51dfc5c6c14a4b5c157d27239e1174846449a40a05e20d5074851c312a0aed87ec5147b97bb57e3c71c53209ac6c0a29a114d062122adc8b0ac2245335e82dd', 'USER', NULL),
(18, 'admin', 'scrypt:32768:8:1$GNjVnU8cEjb9XaFM$30d0f9920672205f6ca05ce1c178ea90ebdd2c7f3262af636a38bd128ff62fac3b3b559803dc5a923775336498a7d1d0f970eb380986023f50ce21569a291bbf', 'ADMIN', NULL),
(19, 'ngphuc689@gmail.com', 'scrypt:32768:8:1$UEbqnXrhPUlU3mp8$49369cf5d9e2ea5ef8ef5c64232e5c65c26adf49ca34bdf1f4467ffe7fe5fafe180c55bed940500672646660542682e24f20d80da4a196ae572e2737fccd519d', 'USER', NULL),
(20, '23001499', 'scrypt:32768:8:1$pZi5ooaGnfwOZG5F$44ecfdbc1929d48c9caa8727658ed09c2c255ec0479888e6438900b04dd0442b6fe7367d0a0a340755cf36bfafaad5d22beaaa469c2dc742cc5c3703df8db0df', 'USER', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuatvien`
--

CREATE TABLE `xuatvien` (
  `MABN` varchar(50) NOT NULL,
  `ngayxv` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `xuatvien`
--

INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES
('BN001', '2025-01-10 00:00:00'),
('BN002', '2025-11-30 00:00:00'),
('BN003', '2025-12-07 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`MABS`);

--
-- Chỉ mục cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD PRIMARY KEY (`MABN`);

--
-- Chỉ mục cho bảng `bhyt`
--
ALTER TABLE `bhyt`
  ADD PRIMARY KEY (`MABHYT`,`MABN`),
  ADD KEY `fk_bhyt_benhnhan` (`MABN`);

--
-- Chỉ mục cho bảng `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD PRIMARY KEY (`MADT`),
  ADD KEY `fk_ctdh_thuoc` (`MATHUOC`);

--
-- Chỉ mục cho bảng `donthuoc`
--
ALTER TABLE `donthuoc`
  ADD PRIMARY KEY (`MADT`),
  ADD KEY `fk_donthuoc_benhnhan` (`MABN`),
  ADD KEY `fk_donthuoc_bacsi` (`MABS`);

--
-- Chỉ mục cho bảng `giuong`
--
ALTER TABLE `giuong`
  ADD PRIMARY KEY (`MAPHG`,`so`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MAHD`),
  ADD KEY `fk_hoadon_bhyt` (`MABHYT`),
  ADD KEY `fk_hoadon_chitiet` (`MADT`),
  ADD KEY `fk_hoadon_benhnhan` (`MABN`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MAKHOA`),
  ADD KEY `fk_khoa_truongkhoa` (`MATRG`);

--
-- Chỉ mục cho bảng `lamviec`
--
ALTER TABLE `lamviec`
  ADD PRIMARY KEY (`MAKHOA`,`MABS`),
  ADD KEY `fk_lamviec_bacsi` (`MABS`);

--
-- Chỉ mục cho bảng `nhapvien`
--
ALTER TABLE `nhapvien`
  ADD PRIMARY KEY (`MABN`,`ngaynv`),
  ADD KEY `fk_nhapvien_phongbenh` (`MAPHG`);

--
-- Chỉ mục cho bảng `phongbenh`
--
ALTER TABLE `phongbenh`
  ADD PRIMARY KEY (`MAPHG`),
  ADD KEY `fk_phongbenh_khoa` (`MAKHOA`);

--
-- Chỉ mục cho bảng `sokhambenh`
--
ALTER TABLE `sokhambenh`
  ADD PRIMARY KEY (`MASKB`),
  ADD KEY `fk_skb_benhnhan` (`MABN`),
  ADD KEY `fk_skb_donthuoc` (`MADT`),
  ADD KEY `fk_skb_khoa` (`MAKHOA`);

--
-- Chỉ mục cho bảng `soluongthuoc`
--
ALTER TABLE `soluongthuoc`
  ADD PRIMARY KEY (`MALO`),
  ADD KEY `fk_soluongthuoc_thuoc` (`MATHUOC`);

--
-- Chỉ mục cho bảng `thannhan`
--
ALTER TABLE `thannhan`
  ADD KEY `fk_thannhan_benhnhan` (`MABN`);

--
-- Chỉ mục cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  ADD PRIMARY KEY (`MATHUOC`);

--
-- Chỉ mục cho bảng `toanha`
--
ALTER TABLE `toanha`
  ADD PRIMARY KEY (`MAKHOA`,`MAPHG`),
  ADD KEY `fk_toanha_phongbenh` (`MAPHG`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `xuatvien`
--
ALTER TABLE `xuatvien`
  ADD PRIMARY KEY (`MABN`,`ngayxv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `soluongthuoc`
--
ALTER TABLE `soluongthuoc`
  MODIFY `MALO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD CONSTRAINT `fk_benhnhan_user` FOREIGN KEY (`MABN`) REFERENCES `user` (`username`);

--
-- Các ràng buộc cho bảng `bhyt`
--
ALTER TABLE `bhyt`
  ADD CONSTRAINT `fk_bhyt_benhnhan` FOREIGN KEY (`MABN`) REFERENCES `benhnhan` (`MABN`);

--
-- Các ràng buộc cho bảng `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD CONSTRAINT `fk_ctdh_donthuoc` FOREIGN KEY (`MADT`) REFERENCES `donthuoc` (`MADT`),
  ADD CONSTRAINT `fk_ctdh_thuoc` FOREIGN KEY (`MATHUOC`) REFERENCES `thuoc` (`MATHUOC`);

--
-- Các ràng buộc cho bảng `donthuoc`
--
ALTER TABLE `donthuoc`
  ADD CONSTRAINT `fk_donthuoc_bacsi` FOREIGN KEY (`MABS`) REFERENCES `bacsi` (`MABS`),
  ADD CONSTRAINT `fk_donthuoc_benhnhan` FOREIGN KEY (`MABN`) REFERENCES `benhnhan` (`MABN`);

--
-- Các ràng buộc cho bảng `giuong`
--
ALTER TABLE `giuong`
  ADD CONSTRAINT `fk_giuong_phongbenh` FOREIGN KEY (`MAPHG`) REFERENCES `phongbenh` (`MAPHG`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_hoadon_benhnhan` FOREIGN KEY (`MABN`) REFERENCES `benhnhan` (`MABN`),
  ADD CONSTRAINT `fk_hoadon_bhyt` FOREIGN KEY (`MABHYT`) REFERENCES `bhyt` (`MABHYT`),
  ADD CONSTRAINT `fk_hoadon_chitiet` FOREIGN KEY (`MADT`) REFERENCES `chitiet_dh` (`MADT`);

--
-- Các ràng buộc cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD CONSTRAINT `fk_khoa_truongkhoa` FOREIGN KEY (`MATRG`) REFERENCES `bacsi` (`MABS`);

--
-- Các ràng buộc cho bảng `lamviec`
--
ALTER TABLE `lamviec`
  ADD CONSTRAINT `fk_lamviec_bacsi` FOREIGN KEY (`MABS`) REFERENCES `bacsi` (`MABS`),
  ADD CONSTRAINT `fk_lamviec_khoa` FOREIGN KEY (`MAKHOA`) REFERENCES `khoa` (`MAKHOA`);

--
-- Các ràng buộc cho bảng `nhapvien`
--
ALTER TABLE `nhapvien`
  ADD CONSTRAINT `fk_nhapvien_benhnhan` FOREIGN KEY (`MABN`) REFERENCES `benhnhan` (`MABN`),
  ADD CONSTRAINT `fk_nhapvien_phongbenh` FOREIGN KEY (`MAPHG`) REFERENCES `phongbenh` (`MAPHG`);

--
-- Các ràng buộc cho bảng `phongbenh`
--
ALTER TABLE `phongbenh`
  ADD CONSTRAINT `fk_phongbenh_khoa` FOREIGN KEY (`MAKHOA`) REFERENCES `khoa` (`MAKHOA`);

--
-- Các ràng buộc cho bảng `sokhambenh`
--
ALTER TABLE `sokhambenh`
  ADD CONSTRAINT `fk_skb_benhnhan` FOREIGN KEY (`MABN`) REFERENCES `benhnhan` (`MABN`),
  ADD CONSTRAINT `fk_skb_donthuoc` FOREIGN KEY (`MADT`) REFERENCES `donthuoc` (`MADT`),
  ADD CONSTRAINT `fk_skb_khoa` FOREIGN KEY (`MAKHOA`) REFERENCES `khoa` (`MAKHOA`);

--
-- Các ràng buộc cho bảng `soluongthuoc`
--
ALTER TABLE `soluongthuoc`
  ADD CONSTRAINT `fk_soluongthuoc_thuoc` FOREIGN KEY (`MATHUOC`) REFERENCES `thuoc` (`MATHUOC`);

--
-- Các ràng buộc cho bảng `thannhan`
--
ALTER TABLE `thannhan`
  ADD CONSTRAINT `fk_thannhan_benhnhan` FOREIGN KEY (`MABN`) REFERENCES `benhnhan` (`MABN`);

--
-- Các ràng buộc cho bảng `toanha`
--
ALTER TABLE `toanha`
  ADD CONSTRAINT `fk_toanha_khoa` FOREIGN KEY (`MAKHOA`) REFERENCES `khoa` (`MAKHOA`),
  ADD CONSTRAINT `fk_toanha_phongbenh` FOREIGN KEY (`MAPHG`) REFERENCES `phongbenh` (`MAPHG`);

--
-- Các ràng buộc cho bảng `xuatvien`
--
ALTER TABLE `xuatvien`
  ADD CONSTRAINT `fk_xuatvien_benhnhan` FOREIGN KEY (`MABN`) REFERENCES `benhnhan` (`MABN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
