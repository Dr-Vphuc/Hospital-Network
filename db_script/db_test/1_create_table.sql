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
-- -------------------------------------------------------
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
-- -------------------------------------------------------
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
--
-- Chỉ mục cho các bảng đã đổ
--
--
-- Chỉ mục cho bảng `bacsi`
--

