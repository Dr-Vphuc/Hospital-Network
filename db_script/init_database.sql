-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2025 lúc 04:39 AM
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
  `gioitinh` varchar(10) DEFAULT NULL,
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
('BS001', 'Nguyễn Thị Liễu', 'F', '1978-05-14 10:00:00', '0995822412', 'P104', 'BS', 'K001', 1),
('BS002', 'Trần Minh Quân', 'M', '1983-09-21 10:00:00', '0946913810', 'P108', 'ThS', 'K001', 1),
('BS003', 'Lê Thị Thu Hà', 'F', '1975-03-08 10:00:00', '0928728463', 'P104', 'CKII', 'K002', 1),
('BS004', 'Phạm Đức Long', 'M', '1980-11-30 10:00:00', '0921668732', 'P119', 'CKI', 'K002', 1),
('BS005', 'Vũ Ngọc Mai', 'F', '1986-02-17 10:00:00', '0914265799', 'P101', 'BS', 'K003', 1),
('BS006', 'Đặng Hoàng Nam', 'M', '1972-07-04 10:00:00', '0939345092', 'P108', 'CKII', 'K003', 1),
('BS007', 'Hoàng Thị Kim Lan', 'F', '1979-12-12 10:00:00', '0990801586', 'P101', 'CKII', 'K004', 1),
('BS008', 'Bùi Thanh Tùng', 'M', '1984-06-26 10:00:00', '0936687537', 'P118', 'CKI', 'K009', 1),
('BS009', 'Ngô Thị Hạnh', 'F', '1971-01-19 10:00:00', '0939587039', 'P115', 'CKII', 'K005', 1),
('BS010', 'Phan Quốc Việt Nam', 'M', '1988-10-02 10:00:00', '0947338124', 'P101', 'ThS', 'K005', 1),
('BS011', 'Đỗ Thu Trang', 'F', '1982-04-09 10:00:00', '0966722344', 'P111', 'TS', 'K006', 1),
('BS012', 'Nguyễn Hữu Phúc', 'M', '1970-08-23 10:00:00', '0930868105', 'P107', 'TS', 'K006', 1),
('BS013', 'Lý Thị Kim Anh', 'F', '1987-01-15 10:00:00', '0923718431', 'P103', 'CKI', 'K007', 0),
('BS014', 'Trương Văn Khải', 'M', '1976-09-05 10:00:00', '0922981052', 'P112', 'TS', 'K007', 0),
('BS015', 'Mai Thị Ngọc', 'F', '1993-06-11 10:00:00', '0991030736', 'P109', 'BS', 'K008', 0),
('BS016', 'Hồ Văn Cường', 'M', '1981-12-28 10:00:00', '0971662963', 'P118', 'BS', 'K008', 0),
('BS017', 'Tạ Thị Bích', 'F', '1974-03-20 10:00:00', '0960806024', 'P103', 'CKII', 'K009', 0),
('BS018', 'Nguyễn Khắc Huy', 'M', '2005-11-17 10:00:00', '0339289766', 'P120', 'TS', 'K004', 0),
('BS019', 'Nguyễn Thị Thanh', 'F', '1985-11-18 10:00:00', '0987490893', 'P107', 'BS', 'K010', 0),
('BS020', 'Nguyễn Việt Phúc', 'M', '2005-10-27 10:00:00', '0333497317', 'P108', 'TS', 'K010', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benhnhan`
--

CREATE TABLE `benhnhan` (
  `MABN` varchar(50) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` varchar(1) DEFAULT NULL,
  `ngaysinh` datetime DEFAULT NULL,
  `sdt` varchar(15) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `loaibn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `benhnhan`
--

INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES
('BN001', 'Nguyễn Văn Minh', 'M', '2006-10-12 10:00:00', '0320709497', 'Số 60, Hà Nội', 'Đã xuất viện'),
('BN002', 'Nguyễn Thị Mai', 'F', '2017-03-29 10:00:00', '0347308985', 'Số 117, Hải Phòng', 'Đã xuất viện'),
('BN003', 'Trần Đức Anh', 'M', '1985-12-16 10:00:00', '0359684848', 'Số 91, Thái Bình', 'Đã xuất viện'),
('BN004', 'Trần Thu Hà', 'F', '1989-01-25 10:00:00', '0396977837', 'Số 19, Bắc Ninh', 'Đã xuất viện'),
('BN005', 'Lê Quang Huy', 'M', '1992-03-06 10:00:00', '0381691040', 'Số 187, Thái Bình', 'Đã xuất viện'),
('BN006', 'Lê Ngọc Anh', 'F', '2003-08-07 10:00:00', '0372043515', 'Số 98, Hải Phòng', 'Đã xuất viện'),
('BN007', 'Phạm Quốc Khánh', 'M', '2007-07-27 10:00:00', '0353524491', 'Số 197, Hà Nội', 'Đã xuất viện'),
('BN008', 'Phạm Minh Châu', 'F', '1951-12-21 10:00:00', '0314308421', 'Số 81, Nam Định', 'Đã xuất viện'),
('BN009', 'Hoàng Minh Tuấn', 'M', '2008-06-17 10:00:00', '0318883684', 'Số 55, Bắc Ninh', 'Đã xuất viện'),
('BN010', 'Hoàng Thị Lan', 'F', '1945-12-31 10:00:00', '0338538251', 'Số 168, Nam Định', 'Đã xuất viện'),
('BN011', 'Vũ Đức Long', 'M', '1992-06-14 10:00:00', '0396282117', 'Số 118, Thái Bình', 'Đã xuất viện'),
('BN012', 'Vũ Khánh Linh', 'F', '1998-08-01 10:00:00', '0328740864', 'Số 64, Bắc Ninh', 'Đã xuất viện'),
('BN013', 'Bùi Thanh Sơn', 'M', '1976-02-06 10:00:00', '0388461803', 'Số 110, Bắc Ninh', 'Nội trú'),
('BN014', 'Bùi Thu Trang', 'F', '1954-10-15 10:00:00', '0358586340', 'Số 57, Thái Bình', 'Nội trú'),
('BN015', 'Đặng Hữu Phúc', 'M', '1986-09-03 10:00:00', '0322201654', 'Số 194, Hà Nội', 'Nội trú'),
('BN016', 'Đặng Mỹ Linh', 'F', '1972-09-21 10:00:00', '0330514014', 'Số 161, Thái Bình', 'Nội trú'),
('BN017', 'Ngô Gia Bảo', 'M', '1977-10-07 10:00:00', '0390048665', 'Số 17, Nam Định', 'Nội trú'),
('BN018', 'Ngô Thùy Dương', 'F', '2013-02-01 10:00:00', '0389978790', 'Số 120, Bắc Ninh', 'Nội trú'),
('BN019', 'Phan Quốc Việt', 'M', '2018-11-16 10:00:00', '0384252722', 'Số 3, Hà Nội', 'Ngoại trú'),
('BN020', 'Phan Thanh Hương', 'F', '2008-08-06 10:00:00', '0396028436', 'Số 88, Hà Nội', 'Ngoại trú'),
('BN021', 'Đinh Quang Huy', 'M', '1971-01-10 10:00:00', '0368353204', 'Số 41, Nam Định', 'Ngoại trú'),
('BN022', 'Đinh Bích Ngọc', 'F', '1967-07-06 10:00:00', '0345351479', 'Số 129, Thái Bình', 'Ngoại trú'),
('BN023', 'Tạ Minh Hoàng', 'M', '1986-04-29 10:00:00', '0393926371', 'Số 77, Bắc Ninh', 'Ngoại trú'),
('BN024', 'Tạ Kim Oanh', 'F', '1975-04-26 10:00:00', '0330513739', 'Số 96, Thái Bình', 'Ngoại trú'),
('BN025', 'Dương Quang Huy', 'M', '2005-12-12 10:00:00', '0390388981', 'Số 83, Nam Định', 'Ngoại trú'),
('BN026', 'Trương Thảo Vy', 'F', '1971-09-05 10:00:00', '0325014631', 'Số 93, Hải Phòng', 'Ngoại trú'),
('BN027', 'Lưu Văn Sơn', 'M', '2000-08-28 10:00:00', '0317774584', 'Số 62, Bắc Ninh', 'Ngoại trú'),
('BN028', 'Lưu Diệu Anh', 'F', '2003-01-23 10:00:00', '0321496211', 'Số 188, Nam Định', 'Ngoại trú'),
('BN029', 'Đoàn Dương Hưng', 'M', '2005-12-12 10:00:00', '0381498611', 'Số 197, Thái Bình', 'Ngoại trú'),
('BN030', 'Hồ Thuỳ Linh', 'F', '1949-07-26 10:00:00', '0398550256', 'Số 122, Bắc Ninh', 'Ngoại trú'),
('BN031', 'Mai Anh Dũng', 'M', '1978-04-03 10:00:00', '0345575298', 'Số 136, Bắc Ninh', 'Ngoại trú'),
('BN032', 'Mai Phương Thảo', 'F', '1994-10-19 10:00:00', '0338427073', 'Số 139, Thái Bình', 'Ngoại trú'),
('BN033', 'Chu Thanh Tùng', 'M', '2002-03-22 10:00:00', '0363551839', 'Số 172, Hải Phòng', 'Ngoại trú'),
('BN034', 'Chu Ngọc Bích', 'F', '1951-01-25 10:00:00', '0379467853', 'Số 116, Hà Nội', 'Ngoại trú'),
('BN035', 'Đoàn Đức Thịnh', 'M', '2020-10-29 10:00:00', '0340158366', 'Số 17, Hải Phòng', 'Ngoại trú'),
('BN036', 'Đoàn Khánh An', 'F', '1997-05-12 10:00:00', '0388961459', 'Số 142, Thái Bình', 'Ngoại trú'),
('BN037', 'Lâm Nhật Nam', 'M', '2012-08-06 10:00:00', '0310965138', 'Số 19, Hà Nội', 'Ngoại trú'),
('BN038', 'Lâm Thanh Trúc', 'F', '1980-08-15 10:00:00', '0319046318', 'Số 9, Hải Phòng', 'Ngoại trú'),
('BN039', 'Cao Hoàng Phúc', 'M', '2006-07-23 10:00:00', '0379008866', 'Số 61, Hải Phòng', 'Ngoại trú'),
('BN040', 'Cao Minh Tâm', 'F', '1946-09-07 10:00:00', '0338754377', 'Số 139, Thái Bình', 'Ngoại trú'),
('BN041', 'Nguyễn Hải Đăng', 'M', '1990-07-14 10:00:00', '0342614537', 'Số 122, Nam Định', 'Ngoại trú'),
('BN042', 'Nguyễn Bảo Châu', 'F', '2015-04-04 10:00:00', '0322660194', 'Số 25, Nam Định', 'Ngoại trú'),
('BN043', 'Trần Thanh Bình', 'M', '1991-12-11 10:00:00', '0366851760', 'Số 106, Nam Định', 'Ngoại trú'),
('BN044', 'Trần Ngọc Hân', 'F', '1981-05-09 10:00:00', '0397705310', 'Số 166, Hà Nội', 'Ngoại trú'),
('BN045', 'Lê Đức Tài', 'M', '1984-02-13 10:00:00', '0364038913', 'Số 187, Hải Phòng', 'Ngoại trú'),
('BN046', 'Lê Thanh Vân', 'F', '1953-05-20 10:00:00', '0343374088', 'Số 50, Thái Bình', 'Ngoại trú'),
('BN047', 'Phạm Hữu Đạt', 'M', '2005-06-10 10:00:00', '0328814949', 'Số 109, Thái Bình', 'Ngoại trú'),
('BN048', 'Phạm Yến Nhi', 'F', '1998-02-10 10:00:00', '0372092888', 'Số 64, Hà Nội', 'Ngoại trú'),
('BN049', 'Hoàng Quốc Thái', 'M', '1955-07-27 10:00:00', '0383863413', 'Số 26, Hà Nội', 'Ngoại trú'),
('BN050', 'Hoàng Ngọc Mai', 'F', '1974-10-07 10:00:00', '0322517517', 'Số 193, Thái Bình', 'Ngoại trú');

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
('BHYT20250001', 'BN001', '2023-02-11 10:00:00', '2027-02-10 10:00:00'),
('BHYT20250002', 'BN002', '2024-05-08 10:00:00', '2028-05-07 10:00:00'),
('BHYT20250003', 'BN003', '2023-09-17 10:00:00', '2027-09-16 10:00:00'),
('BHYT20250004', 'BN004', '2025-03-21 10:00:00', '2029-03-20 10:00:00'),
('BHYT20250005', 'BN005', '2024-11-03 10:00:00', '2028-11-02 10:00:00'),
('BHYT20250006', 'BN006', '2023-06-25 10:00:00', '2027-06-24 10:00:00'),
('BHYT20250007', 'BN007', '2024-01-14 10:00:00', '2028-01-13 10:00:00'),
('BHYT20250008', 'BN008', '2025-07-09 10:00:00', '2029-07-08 10:00:00'),
('BHYT20250009', 'BN009', '2023-12-02 10:00:00', '2027-12-01 10:00:00'),
('BHYT20250010', 'BN010', '2024-07-28 10:00:00', '2028-07-27 10:00:00'),
('BHYT20250011', 'BN011', '2025-01-06 10:00:00', '2029-01-05 10:00:00'),
('BHYT20250012', 'BN012', '2023-03-30 10:00:00', '2027-03-29 10:00:00'),
('BHYT20250013', 'BN013', '2024-09-11 10:00:00', '2028-09-10 10:00:00'),
('BHYT20250014', 'BN014', '2023-07-07 10:00:00', '2027-07-06 10:00:00'),
('BHYT20250015', 'BN015', '2025-05-18 10:00:00', '2029-05-17 10:00:00'),
('BHYT20250016', 'BN016', '2024-02-22 10:00:00', '2028-02-21 10:00:00'),
('BHYT20250017', 'BN017', '2023-10-29 10:00:00', '2027-10-28 10:00:00'),
('BHYT20250018', 'BN018', '2024-12-15 10:00:00', '2028-12-14 10:00:00'),
('BHYT20250019', 'BN019', '2023-05-12 10:00:00', '2027-05-11 10:00:00'),
('BHYT20250020', 'BN020', '2025-09-02 10:00:00', '2029-09-01 10:00:00'),
('BHYT20250021', 'BN021', '2024-04-04 10:00:00', '2028-04-03 10:00:00'),
('BHYT20250022', 'BN022', '2023-11-19 10:00:00', '2027-11-18 10:00:00'),
('BHYT20250023', 'BN023', '2025-02-14 10:00:00', '2029-02-13 10:00:00'),
('BHYT20250024', 'BN024', '2024-08-09 10:00:00', '2028-08-08 10:00:00'),
('BHYT20250025', 'BN025', '2023-04-01 10:00:00', '2027-03-31 10:00:00'),
('BHYT20250026', 'BN026', '2025-06-23 10:00:00', '2029-06-22 10:00:00'),
('BHYT20250027', 'BN027', '2024-03-16 10:00:00', '2028-03-15 10:00:00'),
('BHYT20250028', 'BN028', '2023-08-24 10:00:00', '2027-08-23 10:00:00'),
('BHYT20250029', 'BN029', '2024-10-06 10:00:00', '2028-10-05 10:00:00'),
('BHYT20250030', 'BN030', '2025-04-12 10:00:00', '2029-04-11 10:00:00'),
('BHYT20250031', 'BN031', '2023-01-27 10:00:00', '2027-01-26 10:00:00'),
('BHYT20250032', 'BN032', '2024-06-19 10:00:00', '2028-06-18 10:00:00'),
('BHYT20250033', 'BN033', '2025-08-15 10:00:00', '2029-08-14 10:00:00'),
('BHYT20250034', 'BN034', '2023-09-05 10:00:00', '2027-09-04 10:00:00'),
('BHYT20250035', 'BN035', '2024-02-02 10:00:00', '2028-02-01 10:00:00'),
('BHYT20250036', 'BN036', '2025-11-08 10:00:00', '2029-11-07 10:00:00'),
('BHYT20250037', 'BN037', '2023-06-03 10:00:00', '2027-06-02 10:00:00'),
('BHYT20250038', 'BN038', '2024-12-01 10:00:00', '2028-11-30 10:00:00'),
('BHYT20250039', 'BN039', '2024-07-02 10:00:00', '2028-07-01 10:00:00'),
('BHYT20250040', 'BN040', '2023-03-03 10:00:00', '2027-03-02 10:00:00'),
('BHYT20250041', 'BN041', '2025-02-28 10:00:00', '2029-02-27 10:00:00'),
('BHYT20250042', 'BN042', '2024-09-29 10:00:00', '2028-09-28 10:00:00'),
('BHYT20250043', 'BN043', '2023-10-11 10:00:00', '2027-10-10 10:00:00'),
('BHYT20250044', 'BN044', '2025-06-06 10:00:00', '2029-06-05 10:00:00'),
('BHYT20250045', 'BN045', '2024-01-08 10:00:00', '2028-01-07 10:00:00');

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
('DT0001', 'TH013', 3, 6),
('DT0002', 'TH012', 7, 5),
('DT0003', 'TH009', 1, 7),
('DT0004', 'TH003', 1, 3),
('DT0005', 'TH011', 2, 3),
('DT0006', 'TH015', 4, 7),
('DT0007', 'TH012', 6, 7),
('DT0008', 'TH005', 3, 7),
('DT0009', 'TH004', 4, 7),
('DT0010', 'TH004', 1, 6),
('DT0011', 'TH013', 5, 3),
('DT0012', 'TH006', 1, 1),
('DT0013', 'TH001', 2, 5),
('DT0014', 'TH010', 9, 1),
('DT0015', 'TH012', 7, 1),
('DT0016', 'TH006', 7, 1),
('DT0017', 'TH012', 5, 5),
('DT0018', 'TH009', 3, 2),
('DT0019', 'TH010', 10, 3),
('DT0020', 'TH004', 7, 7),
('DT0021', 'TH008', 8, 6),
('DT0022', 'TH011', 2, 3),
('DT0023', 'TH011', 5, 2),
('DT0024', 'TH004', 8, 5),
('DT0025', 'TH004', 7, 4),
('DT0026', 'TH015', 2, 7),
('DT0027', 'TH008', 1, 5),
('DT0028', 'TH011', 9, 5),
('DT0029', 'TH007', 9, 4),
('DT0030', 'TH005', 4, 7),
('DT0031', 'TH005', 8, 1),
('DT0032', 'TH006', 9, 1),
('DT0033', 'TH012', 4, 1),
('DT0034', 'TH007', 1, 2),
('DT0035', 'TH014', 10, 4),
('DT0036', 'TH014', 7, 5),
('DT0037', 'TH004', 5, 4),
('DT0038', 'TH012', 3, 7),
('DT0039', 'TH015', 7, 5),
('DT0040', 'TH003', 8, 2),
('DT0041', 'TH008', 6, 3),
('DT0042', 'TH014', 2, 4),
('DT0043', 'TH011', 2, 7),
('DT0044', 'TH014', 1, 5),
('DT0045', 'TH010', 4, 4),
('DT0046', 'TH010', 2, 7),
('DT0047', 'TH001', 5, 5),
('DT0048', 'TH002', 10, 6),
('DT0049', 'TH014', 10, 7),
('DT0050', 'TH007', 6, 1);

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
('DT0001', 'BS011', 'BN001'),
('DT0002', 'BS002', 'BN002'),
('DT0003', 'BS005', 'BN003'),
('DT0004', 'BS004', 'BN004'),
('DT0005', 'BS008', 'BN005'),
('DT0006', 'BS005', 'BN006'),
('DT0007', 'BS006', 'BN007'),
('DT0008', 'BS008', 'BN008'),
('DT0009', 'BS003', 'BN009'),
('DT0010', 'BS008', 'BN010'),
('DT0011', 'BS003', 'BN011'),
('DT0012', 'BS012', 'BN012'),
('DT0013', 'BS009', 'BN013'),
('DT0014', 'BS003', 'BN014'),
('DT0015', 'BS002', 'BN015'),
('DT0016', 'BS007', 'BN016'),
('DT0017', 'BS004', 'BN017'),
('DT0018', 'BS010', 'BN018'),
('DT0019', 'BS006', 'BN019'),
('DT0020', 'BS010', 'BN020'),
('DT0021', 'BS007', 'BN021'),
('DT0022', 'BS006', 'BN022'),
('DT0023', 'BS008', 'BN023'),
('DT0024', 'BS002', 'BN024'),
('DT0025', 'BS012', 'BN025'),
('DT0026', 'BS001', 'BN026'),
('DT0027', 'BS002', 'BN027'),
('DT0028', 'BS012', 'BN028'),
('DT0029', 'BS001', 'BN029'),
('DT0030', 'BS009', 'BN030'),
('DT0031', 'BS008', 'BN031'),
('DT0032', 'BS011', 'BN032'),
('DT0033', 'BS005', 'BN033'),
('DT0034', 'BS001', 'BN034'),
('DT0035', 'BS001', 'BN035'),
('DT0036', 'BS009', 'BN036'),
('DT0037', 'BS007', 'BN037'),
('DT0038', 'BS007', 'BN038'),
('DT0039', 'BS001', 'BN039'),
('DT0040', 'BS002', 'BN040'),
('DT0041', 'BS007', 'BN041'),
('DT0042', 'BS009', 'BN042'),
('DT0043', 'BS008', 'BN043'),
('DT0044', 'BS007', 'BN044'),
('DT0045', 'BS004', 'BN045'),
('DT0046', 'BS010', 'BN046'),
('DT0047', 'BS011', 'BN047'),
('DT0048', 'BS007', 'BN048'),
('DT0049', 'BS010', 'BN049'),
('DT0050', 'BS003', 'BN050');

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
('PHG001', 1, 0),
('PHG001', 2, 1),
('PHG001', 3, 0),
('PHG001', 4, 0),
('PHG002', 1, 0),
('PHG002', 2, 0),
('PHG002', 3, 0),
('PHG002', 4, 0),
('PHG003', 1, 1),
('PHG003', 2, 0),
('PHG003', 3, 0),
('PHG003', 4, 0),
('PHG004', 1, 1),
('PHG004', 2, 1),
('PHG004', 3, 1),
('PHG004', 4, 1),
('PHG005', 1, 1),
('PHG005', 2, 1),
('PHG005', 3, 0),
('PHG005', 4, 0),
('PHG006', 1, 0),
('PHG006', 2, 0),
('PHG006', 3, 0),
('PHG006', 4, 0),
('PHG007', 1, 0),
('PHG007', 2, 0),
('PHG007', 3, 0),
('PHG007', 4, 0),
('PHG008', 1, 0),
('PHG008', 2, 0),
('PHG008', 3, 0),
('PHG008', 4, 0),
('PHG009', 1, 0),
('PHG009', 2, 0),
('PHG009', 3, 0),
('PHG009', 4, 0),
('PHG010', 1, 0),
('PHG010', 2, 0),
('PHG010', 3, 0),
('PHG010', 4, 0),
('PHG011', 1, 0),
('PHG011', 2, 0),
('PHG011', 3, 0),
('PHG011', 4, 0),
('PHG011', 5, 0),
('PHG011', 6, 0),
('PHG012', 1, 0),
('PHG012', 2, 0),
('PHG012', 3, 0),
('PHG012', 4, 0),
('PHG012', 5, 0),
('PHG012', 6, 0),
('PHG013', 1, 0),
('PHG013', 2, 0),
('PHG013', 3, 0),
('PHG013', 4, 0),
('PHG013', 5, 0),
('PHG013', 6, 0),
('PHG014', 1, 0),
('PHG014', 2, 0),
('PHG014', 3, 0),
('PHG014', 4, 0),
('PHG014', 5, 0),
('PHG014', 6, 0),
('PHG015', 1, 0),
('PHG015', 2, 0),
('PHG015', 3, 0),
('PHG015', 4, 0),
('PHG015', 5, 0),
('PHG015', 6, 0),
('PHG016', 1, 0),
('PHG016', 2, 0),
('PHG016', 3, 0),
('PHG016', 4, 0),
('PHG016', 5, 0),
('PHG016', 6, 0),
('PHG017', 1, 0),
('PHG017', 2, 0),
('PHG017', 3, 0),
('PHG017', 4, 0),
('PHG017', 5, 0),
('PHG017', 6, 0),
('PHG018', 1, 0),
('PHG018', 2, 0),
('PHG018', 3, 0),
('PHG018', 4, 0),
('PHG018', 5, 0),
('PHG018', 6, 0),
('PHG019', 1, 0),
('PHG019', 2, 0),
('PHG019', 3, 0),
('PHG019', 4, 0),
('PHG019', 5, 0),
('PHG019', 6, 0),
('PHG020', 1, 0),
('PHG020', 2, 0),
('PHG020', 3, 0),
('PHG020', 4, 0),
('PHG020', 5, 0),
('PHG020', 6, 0);

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
('HD0001', 'BHYT20250001', 'DT0001', 'BN001', 549000),
('HD0002', 'BHYT20250002', 'DT0002', 'BN002', 492000),
('HD0003', 'BHYT20250003', 'DT0003', 'BN003', 361000),
('HD0004', 'BHYT20250004', 'DT0004', 'BN004', 726000),
('HD0005', 'BHYT20250005', 'DT0005', 'BN005', 106000),
('HD0006', 'BHYT20250006', 'DT0006', 'BN006', 124000),
('HD0007', 'BHYT20250007', 'DT0007', 'BN007', 386000),
('HD0008', 'BHYT20250008', 'DT0008', 'BN008', 265000),
('HD0009', 'BHYT20250009', 'DT0009', 'BN009', 409600),
('HD0010', 'BHYT20250010', 'DT0010', 'BN010', 202400),
('HD0011', 'BHYT20250011', 'DT0011', 'BN011', 115000),
('HD0012', 'BHYT20250012', 'DT0012', 'BN012', 101000);

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
('K001', 'Nội tổng hợp', 'BS001'),
('K002', 'Ngoại tổng hợp', 'BS003'),
('K003', 'Nhi', 'BS005'),
('K004', 'Sản', 'BS018'),
('K005', 'Tim mạch', 'BS009'),
('K006', 'Da liễu', 'BS011'),
('K007', 'Tai Mũi Họng', 'BS013'),
('K008', 'Răng Hàm Mặt', 'BS015'),
('K009', 'Chấn thương', 'BS017'),
('K010', 'Hồi sức', 'BS020');

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
('K001', 'BS001', 16),
('K001', 'BS002', 4),
('K002', 'BS003', 14),
('K002', 'BS004', 12),
('K003', 'BS005', 21),
('K003', 'BS006', 15),
('K004', 'BS007', 23),
('K004', 'BS008', 5),
('K005', 'BS009', 14),
('K005', 'BS010', 6),
('K006', 'BS011', 24),
('K006', 'BS012', 17),
('K007', 'BS013', 21),
('K007', 'BS014', 9),
('K008', 'BS015', 20),
('K008', 'BS016', 18),
('K009', 'BS017', 25),
('K009', 'BS018', 16),
('K010', 'BS019', 15),
('K010', 'BS020', 14);

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
('BN001', '2025-12-03 10:00:00', 'PHG001', 1),
('BN002', '2025-12-19 10:00:00', 'PHG001', 2),
('BN003', '2025-12-02 10:00:00', 'PHG001', 3),
('BN004', '2025-12-10 10:00:00', 'PHG001', 4),
('BN005', '2025-12-16 10:00:00', 'PHG002', 1),
('BN006', '2025-12-15 10:00:00', 'PHG002', 2),
('BN007', '2025-12-11 10:00:00', 'PHG002', 3),
('BN008', '2025-12-16 10:00:00', 'PHG002', 4),
('BN009', '2025-12-16 10:00:00', 'PHG003', 1),
('BN010', '2025-12-02 10:00:00', 'PHG003', 2),
('BN011', '2025-12-15 10:00:00', 'PHG003', 3),
('BN012', '2025-12-11 10:00:00', 'PHG003', 4),
('BN013', '2025-12-10 10:00:00', 'PHG004', 1),
('BN014', '2025-11-30 10:00:00', 'PHG004', 2),
('BN015', '2025-12-13 10:00:00', 'PHG004', 3),
('BN016', '2025-12-09 10:00:00', 'PHG004', 4),
('BN017', '2025-12-13 10:00:00', 'PHG005', 1),
('BN018', '2025-12-11 10:00:00', 'PHG005', 2);

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
('PHG001', 'K001', 4, 450000),
('PHG002', 'K002', 4, 250000),
('PHG003', 'K003', 4, 250000),
('PHG004', 'K004', 4, 450000),
('PHG005', 'K005', 4, 300000),
('PHG006', 'K006', 4, 450000),
('PHG007', 'K007', 4, 350000),
('PHG008', 'K008', 4, 300000),
('PHG009', 'K009', 4, 350000),
('PHG010', 'K010', 4, 250000),
('PHG011', 'K001', 6, 500000),
('PHG012', 'K002', 6, 500000),
('PHG013', 'K003', 6, 600000),
('PHG014', 'K004', 6, 500000),
('PHG015', 'K005', 6, 700000),
('PHG016', 'K006', 6, 500000),
('PHG017', 'K007', 6, 600000),
('PHG018', 'K008', 6, 500000),
('PHG019', 'K009', 6, 500000),
('PHG020', 'K010', 6, 700000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sokhambenh`
--

CREATE TABLE `sokhambenh` (
  `MASKB` varchar(50) NOT NULL,
  `MABN` varchar(50) NOT NULL,
  `ngaykham` datetime NOT NULL,
  `tenbenh` varchar(255) NOT NULL,
  `tinhtrang` varchar(50) NOT NULL,
  `giaidoan` varchar(50) NOT NULL,
  `MADT` varchar(50) NOT NULL,
  `MAKHOA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sokhambenh`
--

INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `tinhtrang`, `giaidoan`, `MADT`, `MAKHOA`) VALUES
('SKB0001', 'BN001', '2025-12-12 10:00:00', 'Đau dạ dày', 'Nặng', 'Điều trị', 'DT0001', 'K006'),
('SKB0002', 'BN002', '2025-12-20 10:00:00', 'Viêm họng', 'Nhẹ', 'Điều trị', 'DT0002', 'K001'),
('SKB0003', 'BN003', '2025-12-09 10:00:00', 'Mất ngủ', 'Nặng', 'Ổn định', 'DT0003', 'K003'),
('SKB0004', 'BN004', '2025-12-09 10:00:00', 'Cảm cúm', 'Trung bình', 'Ổn định', 'DT0004', 'K002'),
('SKB0005', 'BN005', '2025-11-26 10:00:00', 'Viêm da', 'Trung bình', 'Điều trị', 'DT0005', 'K009'),
('SKB0006', 'BN006', '2025-12-15 10:00:00', 'Đau dạ dày', 'Trung bình', 'Ổn định', 'DT0006', 'K003'),
('SKB0007', 'BN007', '2025-11-21 10:00:00', 'Viêm phế quản', 'Nặng', 'Điều trị', 'DT0007', 'K003'),
('SKB0008', 'BN008', '2025-11-28 10:00:00', 'Viêm họng', 'Trung bình', 'Ổn định', 'DT0008', 'K009'),
('SKB0009', 'BN009', '2025-11-21 10:00:00', 'Đau lưng', 'Trung bình', 'Theo dõi', 'DT0009', 'K002'),
('SKB0010', 'BN010', '2025-12-14 10:00:00', 'Viêm phế quản', 'Trung bình', 'Theo dõi', 'DT0010', 'K009'),
('SKB0011', 'BN011', '2025-11-30 10:00:00', 'Viêm da', 'Trung bình', 'Điều trị', 'DT0011', 'K002'),
('SKB0012', 'BN012', '2025-11-22 10:00:00', 'Tiểu đường', 'Nhẹ', 'Điều trị', 'DT0012', 'K006'),
('SKB0013', 'BN013', '2025-12-07 10:00:00', 'Dị ứng', 'Nặng', 'Theo dõi', 'DT0013', 'K005'),
('SKB0014', 'BN014', '2025-12-08 10:00:00', 'Mất ngủ', 'Nhẹ', 'Theo dõi', 'DT0014', 'K002'),
('SKB0015', 'BN015', '2025-12-04 10:00:00', 'Viêm da', 'Nặng', 'Điều trị', 'DT0015', 'K001'),
('SKB0016', 'BN016', '2025-11-20 10:00:00', 'Dị ứng', 'Nặng', 'Theo dõi', 'DT0016', 'K004'),
('SKB0017', 'BN017', '2025-12-11 10:00:00', 'Viêm phế quản', 'Trung bình', 'Theo dõi', 'DT0017', 'K002'),
('SKB0018', 'BN018', '2025-12-07 10:00:00', 'Viêm phế quản', 'Nặng', 'Điều trị', 'DT0018', 'K005'),
('SKB0019', 'BN019', '2025-12-08 10:00:00', 'Viêm da', 'Nhẹ', 'Theo dõi', 'DT0019', 'K003'),
('SKB0020', 'BN020', '2025-12-02 10:00:00', 'Mất ngủ', 'Nặng', 'Theo dõi', 'DT0020', 'K005'),
('SKB0021', 'BN021', '2025-12-14 10:00:00', 'Viêm da', 'Trung bình', 'Điều trị', 'DT0021', 'K004'),
('SKB0022', 'BN022', '2025-12-04 10:00:00', 'Mất ngủ', 'Trung bình', 'Ổn định', 'DT0022', 'K003'),
('SKB0023', 'BN023', '2025-11-25 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Ổn định', 'DT0023', 'K009'),
('SKB0024', 'BN024', '2025-11-23 10:00:00', 'Viêm họng', 'Trung bình', 'Theo dõi', 'DT0024', 'K001'),
('SKB0025', 'BN025', '2025-12-08 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Điều trị', 'DT0025', 'K006'),
('SKB0026', 'BN026', '2025-12-07 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Điều trị', 'DT0026', 'K001'),
('SKB0027', 'BN027', '2025-12-13 10:00:00', 'Viêm họng', 'Trung bình', 'Ổn định', 'DT0027', 'K001'),
('SKB0028', 'BN028', '2025-12-01 10:00:00', 'Dị ứng', 'Trung bình', 'Điều trị', 'DT0028', 'K006'),
('SKB0029', 'BN029', '2025-11-22 10:00:00', 'Đau dạ dày', 'Nặng', 'Theo dõi', 'DT0029', 'K001'),
('SKB0030', 'BN030', '2025-11-30 10:00:00', 'Tiểu đường', 'Nặng', 'Theo dõi', 'DT0030', 'K005'),
('SKB0031', 'BN031', '2025-11-28 10:00:00', 'Tiểu đường', 'Nhẹ', 'Theo dõi', 'DT0031', 'K009'),
('SKB0032', 'BN032', '2025-12-16 10:00:00', 'Đau dạ dày', 'Nhẹ', 'Theo dõi', 'DT0032', 'K006'),
('SKB0033', 'BN033', '2025-12-07 10:00:00', 'Viêm phế quản', 'Trung bình', 'Điều trị', 'DT0033', 'K003'),
('SKB0034', 'BN034', '2025-11-24 10:00:00', 'Viêm phế quản', 'Trung bình', 'Điều trị', 'DT0034', 'K001'),
('SKB0035', 'BN035', '2025-12-05 10:00:00', 'Cảm cúm', 'Trung bình', 'Theo dõi', 'DT0035', 'K001'),
('SKB0036', 'BN036', '2025-11-27 10:00:00', 'Viêm da', 'Nặng', 'Ổn định', 'DT0036', 'K005'),
('SKB0037', 'BN037', '2025-12-05 10:00:00', 'Cảm cúm', 'Trung bình', 'Theo dõi', 'DT0037', 'K004'),
('SKB0038', 'BN038', '2025-12-06 10:00:00', 'Đau dạ dày', 'Nặng', 'Điều trị', 'DT0038', 'K004'),
('SKB0039', 'BN039', '2025-12-02 10:00:00', 'Cảm cúm', 'Nhẹ', 'Điều trị', 'DT0039', 'K001'),
('SKB0040', 'BN040', '2025-12-19 10:00:00', 'Tiểu đường', 'Trung bình', 'Theo dõi', 'DT0040', 'K001'),
('SKB0041', 'BN041', '2025-11-26 10:00:00', 'Viêm phế quản', 'Trung bình', 'Theo dõi', 'DT0041', 'K004'),
('SKB0042', 'BN042', '2025-12-20 10:00:00', 'Viêm da', 'Nhẹ', 'Theo dõi', 'DT0042', 'K005'),
('SKB0043', 'BN043', '2025-11-20 10:00:00', 'Cảm cúm', 'Nhẹ', 'Ổn định', 'DT0043', 'K009'),
('SKB0044', 'BN044', '2025-12-16 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Theo dõi', 'DT0044', 'K004'),
('SKB0045', 'BN045', '2025-11-28 10:00:00', 'Tiểu đường', 'Trung bình', 'Ổn định', 'DT0045', 'K002'),
('SKB0046', 'BN046', '2025-11-24 10:00:00', 'Đau dạ dày', 'Trung bình', 'Ổn định', 'DT0046', 'K005'),
('SKB0047', 'BN047', '2025-11-29 10:00:00', 'Viêm phế quản', 'Trung bình', 'Điều trị', 'DT0047', 'K006'),
('SKB0048', 'BN048', '2025-11-24 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Điều trị', 'DT0048', 'K004'),
('SKB0049', 'BN049', '2025-12-17 10:00:00', 'Mất ngủ', 'Nhẹ', 'Theo dõi', 'DT0049', 'K005'),
('SKB0050', 'BN050', '2025-12-04 10:00:00', 'Dị ứng', 'Nhẹ', 'Theo dõi', 'DT0050', 'K002');

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
(1, 'TH003', 147, '2027-04-17 10:00:00'),
(2, 'TH004', 79, '2026-01-31 00:00:00'),
(3, 'TH012', 327, '2026-08-19 10:00:00'),
(4, 'TH012', 210, '2026-08-15 10:00:00'),
(5, 'TH001', 349, '2027-10-19 10:00:00'),
(6, 'TH009', 486, '2027-12-13 10:00:00'),
(7, 'TH003', 79, '2027-11-20 10:00:00'),
(8, 'TH002', 485, '2026-12-25 10:00:00'),
(9, 'TH002', 354, '2026-08-26 10:00:00'),
(10, 'TH011', 491, '2027-02-13 10:00:00'),
(11, 'TH007', 71, '2028-01-22 10:00:00'),
(12, 'TH004', 346, '2028-02-16 10:00:00'),
(13, 'TH001', 367, '2026-09-09 10:00:00'),
(14, 'TH007', 76, '2028-02-05 10:00:00'),
(15, 'TH010', 317, '2027-05-07 10:00:00'),
(16, 'TH015', 183, '2027-01-13 10:00:00'),
(17, 'TH011', 416, '2027-05-05 10:00:00'),
(18, 'TH004', 185, '2027-07-28 10:00:00'),
(19, 'TH003', 393, '2028-04-08 10:00:00'),
(20, 'TH005', 282, '2027-05-07 10:00:00'),
(21, 'TH015', 434, '2026-08-31 10:00:00'),
(22, 'TH001', 284, '2028-03-15 10:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thannhan`
--

CREATE TABLE `thannhan` (
  `MABN` varchar(50) DEFAULT NULL,
  `hoten` varchar(255) NOT NULL,
  `quanhe` varchar(255) DEFAULT NULL,
  `sdt` varchar(15) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thannhan`
--

INSERT INTO `thannhan` (`MABN`, `hoten`, `quanhe`, `sdt`, `diachi`) VALUES
('BN001', 'Nguyễn Thị Hồng', 'Chị gái ruột', '0889520597', 'Số 60, Hà Nội'),
('BN002', 'Trần Văn Khánh', 'Anh trai ruột', '0846023439', 'Số 117, Hải Phòng'),
('BN003', 'Lê Thị Thu', 'Chị gái ruột', '0853258988', 'Số 91, Thái Bình'),
('BN004', 'Phạm Đức Minh', 'Anh trai ruột', '0842949803', 'Số 123, Đà Nẵng'),
('BN005', 'Hoàng Thị Lan', 'Chị gái ruột', '0821631697', 'Số 456, Cần Thơ'),
('BN006', 'Vũ Văn Thành', 'Anh trai ruột', '0847437115', 'Số 789, Nha Trang'),
('BN007', 'Bùi Thị Mai', 'Chị gái ruột', '0870505620', 'Số 321, Vũng Tàu'),
('BN008', 'Đặng Văn Hùng', 'Anh trai ruột', '0842730796', 'Số 654, Huế'),
('BN009', 'Ngô Thị Hạnh', 'Chị gái ruột', '0872372114', 'Số 123, Cần Thơ'),
('BN010', 'Phan Văn Quân', 'Anh trai ruột', '0886483924', 'Số 456, Đà Nẵng'),
('BN011', 'Đinh Thị Hoa', 'Mẹ ruột', '0891917334', 'Số 789, Nha Trang'),
('BN012', 'Tạ Văn Phúc', 'Bố ruột', '0899682738', 'Số 321, Vũng Tàu'),
('BN013', 'Trương Thị Ngọc', 'Mẹ ruột', '0860867083', 'Số 123, Cần Thơ'),
('BN014', 'Lưu Văn Sơn', 'Bố ruột', '0855150390', 'Số 456, Đà Nẵng'),
('BN015', 'Hồ Thị Oanh', 'Mẹ ruột', '0813852048', 'Số 789, Nha Trang'),
('BN016', 'Mai Văn Cường', 'Bố ruột', '0876344695', 'Số 321, Vũng Tàu'),
('BN017', 'Chu Thị Trang', 'Mẹ ruột', '0853622663', 'Số 654, Huế'),
('BN018', 'Đoàn Văn Huy', 'Bố ruột', '0834406132', 'Số 123, Cần Thơ'),
('BN019', 'Cao Thị Yến', 'Mẹ ruột', '0875437844', 'Số 456, Đà Nẵng'),
('BN020', 'Lâm Văn Khải', 'Bố ruột', '0838470244', 'Số 789, Nha Trang');

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
('TH001', 'Paracetamol', 'Thuốc điều trị/giảm triệu chứng', 25000),
('TH002', 'Amoxicillin', 'Thuốc điều trị/giảm triệu chứng', 30000),
('TH003', 'Ibuprofen', 'Thuốc điều trị/giảm triệu chứng', 30000),
('TH004', 'Omeprazole', 'Thuốc điều trị/giảm triệu chứng', 12000),
('TH005', 'Vitamin C', 'Thuốc điều trị/giảm triệu chứng', 25000),
('TH006', 'Metformin', 'Thuốc điều trị/giảm triệu chứng', 5000),
('TH007', 'Amlodipine', 'Thuốc điều trị/giảm triệu chứng', 10000),
('TH008', 'Cefixime', 'Thuốc điều trị/giảm triệu chứng', 25000),
('TH009', 'Loratadine', 'Thuốc điều trị/giảm triệu chứng', 5000),
('TH010', 'Salbutamol', 'Thuốc điều trị/giảm triệu chứng', 25000),
('TH011', 'Diclofenac', 'Thuốc điều trị/giảm triệu chứng', 15000),
('TH012', 'Clarithromycin', 'Thuốc điều trị/giảm triệu chứng', 30000),
('TH013', 'Losartan', 'Thuốc điều trị/giảm triệu chứng', 15000),
('TH014', 'Prednisone', 'Thuốc điều trị/giảm triệu chứng', 25000),
('TH015', 'ORS', 'Thuốc điều trị/giảm triệu chứng', 30000);

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
('K001', 'PHG001', 'Tòa A'),
('K002', 'PHG002', 'Tòa B'),
('K003', 'PHG003', 'Tòa B'),
('K004', 'PHG004', 'Tòa A'),
('K005', 'PHG005', 'Tòa B'),
('K006', 'PHG006', 'Tòa C'),
('K007', 'PHG007', 'Tòa C'),
('K008', 'PHG008', 'Tòa B'),
('K009', 'PHG009', 'Tòa C'),
('K010', 'PHG010', 'Tòa C');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `ref_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES
(80, 'a', 'scrypt:32768:8:1$uHEULMw2ivoLzzes$c38018a79bf1b8e7dad47d1c521d8b2dda5e08573b37cab71f7d927ca85045e0f95f6299e923530ebe30050d3bf2407c09734bcc0605228673a8a8ab68e6eff7', 'ADMIN', 'ADMIN'),
(81, 'b1', 'scrypt:32768:8:1$gaHutvZaQ6WVJiVs$5aca90059148c06acfd9f48baefc58928bd8dbb19f8deb7e0eb505cce96e8b80346ee803f9f5a6e6bf78840121d049a1ce11d1638e3f4b28f9cf40274e0148cf', 'DOCTOR', 'BS001'),
(82, 'b2', 'scrypt:32768:8:1$K2L8ug0gxpsY6Dq6$72115930e6560bc02bf69a852d3c5c9b8b3d869b0f882f0c55d2f6668b2e84a1fe6043011f5a5c59a2b2f7bc0509ba41d51c8938c7bb4fa73ee61105facfcbeb', 'DOCTOR', 'BS002'),
(83, 'b3', 'scrypt:32768:8:1$dxyqTvImeZuZ3tLx$f707c23422b24a9683aa4c98dede4965f5e32a7849eabb6937f1d2ede6cf6ce9139f12847cfd5e32966cdc6e7db4acd7c1e2b0b3ead4cc9790037855802a94e5', 'DOCTOR', 'BS003'),
(84, 'b4', 'scrypt:32768:8:1$ib8zScG3sUOLHy8w$0311d7f7ceaed74b332b278c16ec0221bde76e16a205987cf163f039899c425e893ba4282a8f5d4d93d113125d0c06d7e4fd85eeb26f44a3eaa0fa711cd491c6', 'DOCTOR', 'BS004'),
(85, 'b5', 'scrypt:32768:8:1$Rj7lr4hi4wjusntP$0d403634fb6875b95877ddbf61f9fe00bbd1eba7ef005ee697102c992b35c3ab179153cb35df3342c9b1d113181d6a2600716d36c5da6b3be590113cec1bb6ce', 'DOCTOR', 'BS005'),
(86, 'b6', 'scrypt:32768:8:1$y03HvnWGMzhM1XDM$237efa1744a8175ca49a7d634332c4e5f0e19e326fec828e4050aae0b8270c56f997c6fbf2d7a34a9f0ea37f43c8ee17b36be43f8f226e671f52f50cae3e3350', 'DOCTOR', 'BS006'),
(87, 'b7', 'scrypt:32768:8:1$TIMzY0WVCmFMAuVR$c0b432f30a4eae41d02f6373db4469e8a1c716419423530583cb9f568c34d8da5466e0704638028b7a82aaacab726129e0cab3e66f05ca046167540afc78cd61', 'DOCTOR', 'BS007'),
(88, 'b8', 'scrypt:32768:8:1$mnkZ7IszVYA0Hdcm$59d0db3eb4aff3349783f3d03c4e8c1817f4972d2c68c396e98b214185c9df122061f82c20e0c645a7f7afe4b1384d2bf5067ba45c41186d2dc87f1ece747f51', 'DOCTOR', 'BS008'),
(89, 'b9', 'scrypt:32768:8:1$mJ8Zyjm5d5YKIISq$db8a2e99bef9634aea44ca759fec3659f52dfb7eb42fd67cf48e5fbfb762e5f0056a4ab098401b742b19573966f82d3cccffbcacf2893ab478ec5f39ca068ac0', 'DOCTOR', 'BS009'),
(90, 'b10', 'scrypt:32768:8:1$DZaD2e1tq5WeyM4r$134ae92b4890940029c43101558ae2e513371e66014c78b39f90df0c95c85e2496bd61162d35c0643c25dcdd99514d7d8978bcfa1e832c60694e23ee5f76f60f', 'DOCTOR', 'BS010'),
(91, 'b11', 'scrypt:32768:8:1$amgJPc0DJZQuR6KY$ee23a85114de2013b19d26508c37cc3afee97f989f95b24a620fe09ff4f9c8fec0d754a56a925f3c1490f14b516e0e331a7b4524d048e12e68104853ca7a87c0', 'DOCTOR', 'BS011'),
(92, 'b12', 'scrypt:32768:8:1$MIL6HMIaDArOqnm6$b0866b86ce26a349aae9efbc74b146c7bd230031eeaf5aee02574fa6048a7e6c933130113babd2305d40ec9d2f82f3483be26a678e8f3ce3f32dcbde5438e6fa', 'DOCTOR', 'BS012'),
(93, 'b13', 'scrypt:32768:8:1$lk5LRP87IPhDkict$9091bdd40ee85ab332e5f2f00e08fc224f0aa38318fd918949eaea657a4f2e11aee8544c1f25fe5eb24db640d0f736ee57cbb23f7dbf8482d35c057d31aff750', 'DOCTOR', 'BS013'),
(94, 'b14', 'scrypt:32768:8:1$bfCW85luw9HVfIK7$3428a3547ccb5e85ad68d428bbcaa8b459456903636db66c6eda43d3992f959badb5b5d8e03404acccde5b1358fb4d58509524f76aa81677aee9fef6022ff9ad', 'DOCTOR', 'BS014'),
(95, 'b15', 'scrypt:32768:8:1$ulOX9qEdVDjmvdbb$79b51c5a74a6e1a31712dcf8989c53106c549a5a3d0a6a0843de9c53790df0fe1406e1ef2dcaaecdf8c9a046cc39a4e368f5f300b4c3750acad5431ca74760b9', 'DOCTOR', 'BS015'),
(96, 'b16', 'scrypt:32768:8:1$RQp4eaXSyANFu9OT$451ed3d6669078a511cb9b2e17d8c779bd22d43754cdd1d72d3d57a788c3b373f171ebe07f5c0dd629cb17574781202e9b56d79a40d8c0ae2aa502e93fb89b4a', 'DOCTOR', 'BS016'),
(97, 'b17', 'scrypt:32768:8:1$K2vEVN3xBA8PUY8t$9d6bfba113dc734f1c3d53fc94e09284dda677e7f5c81e787d6e6b0796684b76ad473e5b5d9fead9b5f84ae2a672f36acf372964891e3076c0a4b8a5a78c4feb', 'DOCTOR', 'BS017'),
(98, 'b18', 'scrypt:32768:8:1$gG5Sgh8i8gpO5wjF$9388a55dfe787cfba2897df4fe0a95ddc46368f9822dbe59baaee9ec34f907fe29ba4de702c5877900a73b13540e9fdc72fdbc69a4d7098c0c586e371561a793', 'DOCTOR', 'BS018'),
(99, 'b19', 'scrypt:32768:8:1$ql5wc5xS6NQSmW5l$be6920d26c78576d80cb18cadef46b4f2a7fcc7a28c13aa764af74759dea7ae06e8f66c0ad6dfc98035ee8f4b759f2aed69c4b8c1074d0bd9bc2d86dc08404ee', 'DOCTOR', 'BS019'),
(100, 'b20', 'scrypt:32768:8:1$Sb9cc69hHSNyTCWc$787f39293aa0a63bb69da599d1edf38b70e03b75d20e5a23d13d8a584c10ff3494c2a33065cfce0598e69a83b3f1175a43dddb6d7fe1dd734905fd1b7cd96c5d', 'DOCTOR', 'BS020');

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
('BN001', '2025-12-08 10:00:00'),
('BN002', '2026-06-15 10:00:00'),
('BN003', '2025-12-05 10:00:00'),
('BN004', '2025-12-17 10:00:00'),
('BN005', '2025-12-17 10:00:00'),
('BN006', '2025-12-16 10:00:00'),
('BN007', '2025-12-17 10:00:00'),
('BN008', '2025-12-20 10:00:00'),
('BN009', '2026-06-15 10:00:00'),
('BN010', '2025-12-05 10:00:00'),
('BN011', '2025-12-16 10:00:00'),
('BN012', '2025-12-12 10:00:00');

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
  MODIFY `MALO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Các ràng buộc cho các bảng đã đổ
--

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
