-- Demo insert.sql generated for hospital database

SET NAMES utf8mb4;
SET character_set_client = 'utf8mb4';
SET character_set_results = 'utf8mb4';
SET collation_connection = 'utf8mb4_general_ci';
SET FOREIGN_KEY_CHECKS=0;

-- user
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (1, 'admin', 'admin123', 'ADMIN', NULL);
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (2, 'user01', 'user123', 'USER', NULL);
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (3, 'user02', 'user123', 'USER', NULL);
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (4, 'user03', 'user123', 'USER', NULL);
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (5, 'user04', 'user123', 'USER', NULL);
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (6, 'user05', 'user123', 'USER', NULL);
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (7, 'BS001', 'bs123', 'BACSI', 'BS001');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (8, 'BS002', 'bs123', 'BACSI', 'BS002');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (9, 'BS003', 'bs123', 'BACSI', 'BS003');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (10, 'BS004', 'bs123', 'BACSI', 'BS004');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (11, 'BS005', 'bs123', 'BACSI', 'BS005');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (12, 'BS006', 'bs123', 'BACSI', 'BS006');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (13, 'BS007', 'bs123', 'BACSI', 'BS007');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (14, 'BS008', 'bs123', 'BACSI', 'BS008');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (15, 'BS009', 'bs123', 'BACSI', 'BS009');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (16, 'BS010', 'bs123', 'BACSI', 'BS010');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (17, 'BS011', 'bs123', 'BACSI', 'BS011');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (18, 'BS012', 'bs123', 'BACSI', 'BS012');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (19, 'BS013', 'bs123', 'BACSI', 'BS013');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (20, 'BS014', 'bs123', 'BACSI', 'BS014');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (21, 'BS015', 'bs123', 'BACSI', 'BS015');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (22, 'BS016', 'bs123', 'BACSI', 'BS016');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (23, 'BS017', 'bs123', 'BACSI', 'BS017');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (24, 'BS018', 'bs123', 'BACSI', 'BS018');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (25, 'BS019', 'bs123', 'BACSI', 'BS019');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (26, 'BS020', 'bs123', 'BACSI', 'BS020');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (27, 'BN001', 'bn123', 'BENHNHAN', 'BN001');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (28, 'BN002', 'bn123', 'BENHNHAN', 'BN002');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (29, 'BN003', 'bn123', 'BENHNHAN', 'BN003');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (30, 'BN004', 'bn123', 'BENHNHAN', 'BN004');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (31, 'BN005', 'bn123', 'BENHNHAN', 'BN005');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (32, 'BN006', 'bn123', 'BENHNHAN', 'BN006');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (33, 'BN007', 'bn123', 'BENHNHAN', 'BN007');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (34, 'BN008', 'bn123', 'BENHNHAN', 'BN008');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (35, 'BN009', 'bn123', 'BENHNHAN', 'BN009');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (36, 'BN010', 'bn123', 'BENHNHAN', 'BN010');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (37, 'BN011', 'bn123', 'BENHNHAN', 'BN011');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (38, 'BN012', 'bn123', 'BENHNHAN', 'BN012');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (39, 'BN013', 'bn123', 'BENHNHAN', 'BN013');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (40, 'BN014', 'bn123', 'BENHNHAN', 'BN014');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (41, 'BN015', 'bn123', 'BENHNHAN', 'BN015');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (42, 'BN016', 'bn123', 'BENHNHAN', 'BN016');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (43, 'BN017', 'bn123', 'BENHNHAN', 'BN017');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (44, 'BN018', 'bn123', 'BENHNHAN', 'BN018');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (45, 'BN019', 'bn123', 'BENHNHAN', 'BN019');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (46, 'BN020', 'bn123', 'BENHNHAN', 'BN020');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (47, 'BN021', 'bn123', 'BENHNHAN', 'BN021');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (48, 'BN022', 'bn123', 'BENHNHAN', 'BN022');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (49, 'BN023', 'bn123', 'BENHNHAN', 'BN023');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (50, 'BN024', 'bn123', 'BENHNHAN', 'BN024');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (51, 'BN025', 'bn123', 'BENHNHAN', 'BN025');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (52, 'BN026', 'bn123', 'BENHNHAN', 'BN026');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (53, 'BN027', 'bn123', 'BENHNHAN', 'BN027');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (54, 'BN028', 'bn123', 'BENHNHAN', 'BN028');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (55, 'BN029', 'bn123', 'BENHNHAN', 'BN029');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (56, 'BN030', 'bn123', 'BENHNHAN', 'BN030');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (57, 'BN031', 'bn123', 'BENHNHAN', 'BN031');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (58, 'BN032', 'bn123', 'BENHNHAN', 'BN032');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (59, 'BN033', 'bn123', 'BENHNHAN', 'BN033');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (60, 'BN034', 'bn123', 'BENHNHAN', 'BN034');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (61, 'BN035', 'bn123', 'BENHNHAN', 'BN035');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (62, 'BN036', 'bn123', 'BENHNHAN', 'BN036');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (63, 'BN037', 'bn123', 'BENHNHAN', 'BN037');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (64, 'BN038', 'bn123', 'BENHNHAN', 'BN038');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (65, 'BN039', 'bn123', 'BENHNHAN', 'BN039');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (66, 'BN040', 'bn123', 'BENHNHAN', 'BN040');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (67, 'BN041', 'bn123', 'BENHNHAN', 'BN041');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (68, 'BN042', 'bn123', 'BENHNHAN', 'BN042');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (69, 'BN043', 'bn123', 'BENHNHAN', 'BN043');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (70, 'BN044', 'bn123', 'BENHNHAN', 'BN044');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (71, 'BN045', 'bn123', 'BENHNHAN', 'BN045');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (72, 'BN046', 'bn123', 'BENHNHAN', 'BN046');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (73, 'BN047', 'bn123', 'BENHNHAN', 'BN047');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (74, 'BN048', 'bn123', 'BENHNHAN', 'BN048');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (75, 'BN049', 'bn123', 'BENHNHAN', 'BN049');
INSERT INTO `user` (`userid`, `username`, `password`, `role`, `ref_id`) VALUES (76, 'BN050', 'bn123', 'BENHNHAN', 'BN050');

-- khoa (insert with MATRG NULL first)
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K001', 'Nội tổng hợp', NULL);
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K002', 'Ngoại tổng hợp', NULL);
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K003', 'Nhi', NULL);
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K004', 'Sản', NULL);
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K005', 'Tim mạch', NULL);
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K006', 'Da liễu', NULL);
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K007', 'Tai Mũi Họng', NULL);
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K008', 'Răng Hàm Mặt', NULL);
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K009', 'Chấn thương', NULL);
INSERT INTO `khoa` (`MAKHOA`, `tenkhoa`, `MATRG`) VALUES ('K010', 'Hồi sức', NULL);

-- bacsi
INSERT INTO `bacsi` VALUES
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

('BS013', 'Lý Thị Kim Anh', 'F', '1987-01-15 10:00:00', '0923718431', 'P103', 'CKI', 'K007', 1),
('BS014', 'Trương Văn Khải', 'M', '1976-09-05 10:00:00', '0922981052', 'P112', 'TS', 'K007', 1),

('BS015', 'Mai Thị Ngọc', 'F', '1993-06-11 10:00:00', '0991030736', 'P109', 'BS', 'K008', 1),
('BS016', 'Hồ Văn Cường', 'M', '1981-12-28 10:00:00', '0971662963', 'P118', 'BS', 'K008', 1),

('BS017', 'Tạ Thị Bích', 'F', '1974-03-20 10:00:00', '0960806024', 'P103', 'CKII', 'K009', 1),
('BS018', 'Nguyễn Khắc Huy', 'M', '2005-11-17 10:00:00', '0339289766', 'P120', 'TS', 'K004', 1),

('BS019', 'Nguyễn Thị Thanh', 'F', '1985-11-18 10:00:00', '0987490893', 'P107', 'BS', 'K010', 1),
('BS020', 'Nguyễn Việt Phúc', 'M', '2005-10-27 10:00:00', '0333497317', 'P108', 'TS', 'K010', 1);

-- update khoa.MATRG
UPDATE `khoa` SET `MATRG`='BS001' WHERE `MAKHOA`='K001';
UPDATE `khoa` SET `MATRG`='BS003' WHERE `MAKHOA`='K002';
UPDATE `khoa` SET `MATRG`='BS005' WHERE `MAKHOA`='K003';
UPDATE `khoa` SET `MATRG`='BS018' WHERE `MAKHOA`='K004';
UPDATE `khoa` SET `MATRG`='BS009' WHERE `MAKHOA`='K005';
UPDATE `khoa` SET `MATRG`='BS011' WHERE `MAKHOA`='K006';
UPDATE `khoa` SET `MATRG`='BS013' WHERE `MAKHOA`='K007';
UPDATE `khoa` SET `MATRG`='BS015' WHERE `MAKHOA`='K008';
UPDATE `khoa` SET `MATRG`='BS017' WHERE `MAKHOA`='K009';
UPDATE `khoa` SET `MATRG`='BS020' WHERE `MAKHOA`='K010';

-- phongbenh
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG001', 'K001', 4, 450000.0);
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG002', 'K002', 4, 250000.0);
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG003', 'K003', 4, 250000.0);
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG004', 'K004', 4, 450000.0);
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG005', 'K005', 4, 300000.0);
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG006', 'K006', 4, 450000.0);
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG007', 'K007', 4, 350000.0);
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG008', 'K008', 4, 300000.0);
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG009', 'K009', 4, 350000.0);
INSERT INTO `phongbenh` (`MAPHG`, `MAKHOA`, `sogiuong`, `gia`) VALUES ('PHG010', 'K010', 4, 250000.0);

-- toanha
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K001', 'PHG001', 'Tòa A');
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K002', 'PHG002', 'Tòa B');
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K003', 'PHG003', 'Tòa B');
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K004', 'PHG004', 'Tòa A');
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K005', 'PHG005', 'Tòa B');
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K006', 'PHG006', 'Tòa C');
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K007', 'PHG007', 'Tòa C');
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K008', 'PHG008', 'Tòa B');
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K009', 'PHG009', 'Tòa C');
INSERT INTO `toanha` (`MAKHOA`, `MAPHG`, `tentoa`) VALUES ('K010', 'PHG010', 'Tòa C');

-- giuong
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG001', 1, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG001', 2, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG001', 3, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG001', 4, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG002', 1, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG002', 2, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG002', 3, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG002', 4, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG003', 1, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG003', 2, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG003', 3, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG003', 4, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG004', 1, 1);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG004', 2, 1);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG004', 3, 1);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG004', 4, 1);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG005', 1, 1);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG005', 2, 1);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG005', 3, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG005', 4, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG006', 1, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG006', 2, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG006', 3, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG006', 4, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG007', 1, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG007', 2, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG007', 3, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG007', 4, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG008', 1, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG008', 2, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG008', 3, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG008', 4, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG009', 1, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG009', 2, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG009', 3, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG009', 4, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG010', 1, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG010', 2, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG010', 3, 0);
INSERT INTO `giuong` (`MAPHG`, `so`, `tinhtrang`) VALUES ('PHG010', 4, 0);

-- benhnhan
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN001', 'Bệnh nhân 001', 'M', '2014-12-23 10:00:00', '0320709497', 'Số 60, Hà Nội', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN002', 'Bệnh nhân 002', 'F', '2013-12-23 10:00:00', '0347308985', 'Số 117, Hải Phòng', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN003', 'Bệnh nhân 003', 'M', '2012-12-23 10:00:00', '0359684848', 'Số 91, Thái Bình', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN004', 'Bệnh nhân 004', 'F', '2011-12-24 10:00:00', '0396977837', 'Số 19, Bắc Ninh', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN005', 'Bệnh nhân 005', 'M', '2010-12-24 10:00:00', '0381691040', 'Số 187, Thái Bình', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN006', 'Bệnh nhân 006', 'F', '2009-12-24 10:00:00', '0372043515', 'Số 98, Hải Phòng', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN007', 'Bệnh nhân 007', 'M', '2008-12-24 10:00:00', '0353524491', 'Số 197, Hà Nội', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN008', 'Bệnh nhân 008', 'F', '2007-12-25 10:00:00', '0314308421', 'Số 81, Nam Định', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN009', 'Bệnh nhân 009', 'M', '2006-12-25 10:00:00', '0318883684', 'Số 55, Bắc Ninh', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN010', 'Bệnh nhân 010', 'F', '2005-12-25 10:00:00', '0338538251', 'Số 168, Nam Định', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN011', 'Bệnh nhân 011', 'M', '2004-12-25 10:00:00', '0396282117', 'Số 118, Thái Bình', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN012', 'Bệnh nhân 012', 'F', '2003-12-26 10:00:00', '0328740864', 'Số 64, Bắc Ninh', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN013', 'Bệnh nhân 013', 'M', '2002-12-26 10:00:00', '0388461803', 'Số 110, Bắc Ninh', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN014', 'Bệnh nhân 014', 'F', '2001-12-26 10:00:00', '0358586340', 'Số 57, Thái Bình', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN015', 'Bệnh nhân 015', 'M', '2000-12-26 10:00:00', '0322201654', 'Số 194, Hà Nội', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN016', 'Bệnh nhân 016', 'F', '1999-12-27 10:00:00', '0330514014', 'Số 161, Thái Bình', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN017', 'Bệnh nhân 017', 'M', '1998-12-27 10:00:00', '0390048665', 'Số 17, Nam Định', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN018', 'Bệnh nhân 018', 'F', '1997-12-27 10:00:00', '0389978790', 'Số 120, Bắc Ninh', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN019', 'Bệnh nhân 019', 'M', '1996-12-27 10:00:00', '0384252722', 'Số 3, Hà Nội', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN020', 'Bệnh nhân 020', 'F', '1995-12-28 10:00:00', '0396028436', 'Số 88, Hà Nội', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN021', 'Bệnh nhân 021', 'M', '1994-12-28 10:00:00', '0368353204', 'Số 41, Nam Định', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN022', 'Bệnh nhân 022', 'F', '1993-12-28 10:00:00', '0345351479', 'Số 129, Thái Bình', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN023', 'Bệnh nhân 023', 'M', '1992-12-28 10:00:00', '0393926371', 'Số 77, Bắc Ninh', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN024', 'Bệnh nhân 024', 'F', '1991-12-29 10:00:00', '0330513739', 'Số 96, Thái Bình', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN025', 'Bệnh nhân 025', 'M', '1990-12-29 10:00:00', '0390388981', 'Số 83, Nam Định', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN026', 'Bệnh nhân 026', 'F', '1989-12-29 10:00:00', '0325014631', 'Số 93, Hải Phòng', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN027', 'Bệnh nhân 027', 'M', '1988-12-29 10:00:00', '0317774584', 'Số 62, Bắc Ninh', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN028', 'Bệnh nhân 028', 'F', '1987-12-30 10:00:00', '0321496211', 'Số 188, Nam Định', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN029', 'Bệnh nhân 029', 'M', '1986-12-30 10:00:00', '0381498611', 'Số 197, Thái Bình', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN030', 'Bệnh nhân 030', 'F', '1985-12-30 10:00:00', '0398550256', 'Số 122, Bắc Ninh', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN031', 'Bệnh nhân 031', 'M', '1984-12-30 10:00:00', '0345575298', 'Số 136, Bắc Ninh', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN032', 'Bệnh nhân 032', 'F', '1983-12-31 10:00:00', '0338427073', 'Số 139, Thái Bình', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN033', 'Bệnh nhân 033', 'M', '1982-12-31 10:00:00', '0363551839', 'Số 172, Hải Phòng', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN034', 'Bệnh nhân 034', 'F', '1981-12-31 10:00:00', '0379467853', 'Số 116, Hà Nội', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN035', 'Bệnh nhân 035', 'M', '1980-12-31 10:00:00', '0340158366', 'Số 17, Hải Phòng', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN036', 'Bệnh nhân 036', 'F', '1980-01-01 10:00:00', '0388961459', 'Số 142, Thái Bình', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN037', 'Bệnh nhân 037', 'M', '1979-01-01 10:00:00', '0310965138', 'Số 19, Hà Nội', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN038', 'Bệnh nhân 038', 'F', '1978-01-01 10:00:00', '0319046318', 'Số 9, Hải Phòng', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN039', 'Bệnh nhân 039', 'M', '1977-01-01 10:00:00', '0379008866', 'Số 61, Hải Phòng', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN040', 'Bệnh nhân 040', 'F', '2015-12-23 10:00:00', '0338754377', 'Số 139, Thái Bình', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN041', 'Bệnh nhân 041', 'M', '2014-12-23 10:00:00', '0342614537', 'Số 122, Nam Định', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN042', 'Bệnh nhân 042', 'F', '2013-12-23 10:00:00', '0322660194', 'Số 25, Nam Định', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN043', 'Bệnh nhân 043', 'M', '2012-12-23 10:00:00', '0366851760', 'Số 106, Nam Định', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN044', 'Bệnh nhân 044', 'F', '2011-12-24 10:00:00', '0397705310', 'Số 166, Hà Nội', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN045', 'Bệnh nhân 045', 'M', '2010-12-24 10:00:00', '0364038913', 'Số 187, Hải Phòng', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN046', 'Bệnh nhân 046', 'F', '2009-12-24 10:00:00', '0343374088', 'Số 50, Thái Bình', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN047', 'Bệnh nhân 047', 'M', '2008-12-24 10:00:00', '0328814949', 'Số 109, Thái Bình', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN048', 'Bệnh nhân 048', 'F', '2007-12-25 10:00:00', '0372092888', 'Số 64, Hà Nội', 'Noi tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN049', 'Bệnh nhân 049', 'M', '2006-12-25 10:00:00', '0383863413', 'Số 26, Hà Nội', 'Ngoai tru');
INSERT INTO `benhnhan` (`MABN`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `loaibn`) VALUES ('BN050', 'Bệnh nhân 050', 'F', '2005-12-25 10:00:00', '0322517517', 'Số 193, Thái Bình', 'Ngoai tru');

-- Update names + birthdates (uniform age distribution, 5–80 years)
UPDATE `benhnhan` SET `hoten` = 'Nguyễn Văn Minh', `ngaysinh` = '2006-10-12 10:00:00' WHERE `MABN` = 'BN001';
UPDATE `benhnhan` SET `hoten` = 'Nguyễn Thị Mai', `ngaysinh` = '2017-03-29 10:00:00' WHERE `MABN` = 'BN002';
UPDATE `benhnhan` SET `hoten` = 'Trần Đức Anh', `ngaysinh` = '1985-12-16 10:00:00' WHERE `MABN` = 'BN003';
UPDATE `benhnhan` SET `hoten` = 'Trần Thu Hà', `ngaysinh` = '1989-01-25 10:00:00' WHERE `MABN` = 'BN004';
UPDATE `benhnhan` SET `hoten` = 'Lê Quang Huy', `ngaysinh` = '1992-03-06 10:00:00' WHERE `MABN` = 'BN005';
UPDATE `benhnhan` SET `hoten` = 'Lê Ngọc Anh', `ngaysinh` = '2003-08-07 10:00:00' WHERE `MABN` = 'BN006';
UPDATE `benhnhan` SET `hoten` = 'Phạm Quốc Khánh', `ngaysinh` = '2007-07-27 10:00:00' WHERE `MABN` = 'BN007';
UPDATE `benhnhan` SET `hoten` = 'Phạm Minh Châu', `ngaysinh` = '1951-12-21 10:00:00' WHERE `MABN` = 'BN008';
UPDATE `benhnhan` SET `hoten` = 'Hoàng Minh Tuấn', `ngaysinh` = '2008-06-17 10:00:00' WHERE `MABN` = 'BN009';
UPDATE `benhnhan` SET `hoten` = 'Hoàng Thị Lan', `ngaysinh` = '1945-12-31 10:00:00' WHERE `MABN` = 'BN010';

UPDATE `benhnhan` SET `hoten` = 'Vũ Đức Long', `ngaysinh` = '1992-06-14 10:00:00' WHERE `MABN` = 'BN011';
UPDATE `benhnhan` SET `hoten` = 'Vũ Khánh Linh', `ngaysinh` = '1998-08-01 10:00:00' WHERE `MABN` = 'BN012';
UPDATE `benhnhan` SET `hoten` = 'Bùi Thanh Sơn', `ngaysinh` = '1976-02-06 10:00:00' WHERE `MABN` = 'BN013';
UPDATE `benhnhan` SET `hoten` = 'Bùi Thu Trang', `ngaysinh` = '1954-10-15 10:00:00' WHERE `MABN` = 'BN014';
UPDATE `benhnhan` SET `hoten` = 'Đặng Hữu Phúc', `ngaysinh` = '1986-09-03 10:00:00' WHERE `MABN` = 'BN015';
UPDATE `benhnhan` SET `hoten` = 'Đặng Mỹ Linh', `ngaysinh` = '1972-09-21 10:00:00' WHERE `MABN` = 'BN016';
UPDATE `benhnhan` SET `hoten` = 'Ngô Gia Bảo', `ngaysinh` = '1977-10-07 10:00:00' WHERE `MABN` = 'BN017';
UPDATE `benhnhan` SET `hoten` = 'Ngô Thùy Dương', `ngaysinh` = '2013-02-01 10:00:00' WHERE `MABN` = 'BN018';
UPDATE `benhnhan` SET `hoten` = 'Phan Quốc Việt', `ngaysinh` = '2018-11-16 10:00:00' WHERE `MABN` = 'BN019';
UPDATE `benhnhan` SET `hoten` = 'Phan Thanh Hương', `ngaysinh` = '2008-08-06 10:00:00' WHERE `MABN` = 'BN020';

UPDATE `benhnhan` SET `hoten` = 'Đinh Quang Huy', `ngaysinh` = '1971-01-10 10:00:00' WHERE `MABN` = 'BN021';
UPDATE `benhnhan` SET `hoten` = 'Đinh Bích Ngọc', `ngaysinh` = '1967-07-06 10:00:00' WHERE `MABN` = 'BN022';
UPDATE `benhnhan` SET `hoten` = 'Tạ Minh Hoàng', `ngaysinh` = '1986-04-29 10:00:00' WHERE `MABN` = 'BN023';
UPDATE `benhnhan` SET `hoten` = 'Tạ Kim Oanh', `ngaysinh` = '1975-04-26 10:00:00' WHERE `MABN` = 'BN024';
UPDATE `benhnhan` SET `hoten` = 'Dương Quang Huy', `ngaysinh` = '2005-12-12 10:00:00' WHERE `MABN` = 'BN025';
UPDATE `benhnhan` SET `hoten` = 'Trương Thảo Vy', `ngaysinh` = '1971-09-05 10:00:00' WHERE `MABN` = 'BN026';
UPDATE `benhnhan` SET `hoten` = 'Lưu Văn Sơn', `ngaysinh` = '2000-08-28 10:00:00' WHERE `MABN` = 'BN027';
UPDATE `benhnhan` SET `hoten` = 'Lưu Diệu Anh', `ngaysinh` = '2003-01-23 10:00:00' WHERE `MABN` = 'BN028';
UPDATE `benhnhan` SET `hoten` = 'Đoàn Dương Hưng', `ngaysinh` = '2005-12-12 10:00:00' WHERE `MABN` = 'BN029';
UPDATE `benhnhan` SET `hoten` = 'Hồ Thuỳ Linh', `ngaysinh` = '1949-07-26 10:00:00' WHERE `MABN` = 'BN030';

UPDATE `benhnhan` SET `hoten` = 'Mai Anh Dũng', `ngaysinh` = '1978-04-03 10:00:00' WHERE `MABN` = 'BN031';
UPDATE `benhnhan` SET `hoten` = 'Mai Phương Thảo', `ngaysinh` = '1994-10-19 10:00:00' WHERE `MABN` = 'BN032';
UPDATE `benhnhan` SET `hoten` = 'Chu Thanh Tùng', `ngaysinh` = '2002-03-22 10:00:00' WHERE `MABN` = 'BN033';
UPDATE `benhnhan` SET `hoten` = 'Chu Ngọc Bích', `ngaysinh` = '1951-01-25 10:00:00' WHERE `MABN` = 'BN034';
UPDATE `benhnhan` SET `hoten` = 'Đoàn Đức Thịnh', `ngaysinh` = '2020-10-29 10:00:00' WHERE `MABN` = 'BN035';
UPDATE `benhnhan` SET `hoten` = 'Đoàn Khánh An', `ngaysinh` = '1997-05-12 10:00:00' WHERE `MABN` = 'BN036';
UPDATE `benhnhan` SET `hoten` = 'Lâm Nhật Nam', `ngaysinh` = '2012-08-06 10:00:00' WHERE `MABN` = 'BN037';
UPDATE `benhnhan` SET `hoten` = 'Lâm Thanh Trúc', `ngaysinh` = '1980-08-15 10:00:00' WHERE `MABN` = 'BN038';
UPDATE `benhnhan` SET `hoten` = 'Cao Hoàng Phúc', `ngaysinh` = '2006-07-23 10:00:00' WHERE `MABN` = 'BN039';
UPDATE `benhnhan` SET `hoten` = 'Cao Minh Tâm', `ngaysinh` = '1946-09-07 10:00:00' WHERE `MABN` = 'BN040';

UPDATE `benhnhan` SET `hoten` = 'Nguyễn Hải Đăng', `ngaysinh` = '1990-07-14 10:00:00' WHERE `MABN` = 'BN041';
UPDATE `benhnhan` SET `hoten` = 'Nguyễn Bảo Châu', `ngaysinh` = '2015-04-04 10:00:00' WHERE `MABN` = 'BN042';
UPDATE `benhnhan` SET `hoten` = 'Trần Thanh Bình', `ngaysinh` = '1991-12-11 10:00:00' WHERE `MABN` = 'BN043';
UPDATE `benhnhan` SET `hoten` = 'Trần Ngọc Hân', `ngaysinh` = '1981-05-09 10:00:00' WHERE `MABN` = 'BN044';
UPDATE `benhnhan` SET `hoten` = 'Lê Đức Tài', `ngaysinh` = '1984-02-13 10:00:00' WHERE `MABN` = 'BN045';
UPDATE `benhnhan` SET `hoten` = 'Lê Thanh Vân', `ngaysinh` = '1953-05-20 10:00:00' WHERE `MABN` = 'BN046';
UPDATE `benhnhan` SET `hoten` = 'Phạm Hữu Đạt', `ngaysinh` = '2005-06-10 10:00:00' WHERE `MABN` = 'BN047';
UPDATE `benhnhan` SET `hoten` = 'Phạm Yến Nhi', `ngaysinh` = '1998-02-10 10:00:00' WHERE `MABN` = 'BN048';
UPDATE `benhnhan` SET `hoten` = 'Hoàng Quốc Thái', `ngaysinh` = '1955-07-27 10:00:00' WHERE `MABN` = 'BN049';
UPDATE `benhnhan` SET `hoten` = 'Hoàng Ngọc Mai', `ngaysinh` = '1974-10-07 10:00:00' WHERE `MABN` = 'BN050';


-- bhyt
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250001', 'BN001', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250002', 'BN002', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250003', 'BN003', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250004', 'BN004', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250005', 'BN005', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250006', 'BN006', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250007', 'BN007', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250008', 'BN008', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250009', 'BN009', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250010', 'BN010', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250011', 'BN011', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250012', 'BN012', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250013', 'BN013', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250014', 'BN014', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250015', 'BN015', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250016', 'BN016', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250017', 'BN017', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250018', 'BN018', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250019', 'BN019', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250020', 'BN020', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250021', 'BN021', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250022', 'BN022', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250023', 'BN023', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250024', 'BN024', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250025', 'BN025', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250026', 'BN026', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250027', 'BN027', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250028', 'BN028', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250029', 'BN029', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250030', 'BN030', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250031', 'BN031', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250032', 'BN032', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250033', 'BN033', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250034', 'BN034', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250035', 'BN035', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250036', 'BN036', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250037', 'BN037', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250038', 'BN038', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250039', 'BN039', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250040', 'BN040', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250041', 'BN041', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250042', 'BN042', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250043', 'BN043', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250044', 'BN044', '2024-12-20 10:00:00', '2028-12-19 10:00:00');
INSERT INTO `bhyt` (`MABHYT`, `MABN`, `ngaydk`, `ngayhh`) VALUES ('BHYT20250045', 'BN045', '2024-12-20 10:00:00', '2028-12-19 10:00:00');

-- Make BHYT registration dates diverse, but still valid as of 2025-12-20
UPDATE `bhyt` SET `ngaydk`='2023-02-11 10:00:00', `ngayhh`='2027-02-10 10:00:00' WHERE `MABHYT`='BHYT20250001';
UPDATE `bhyt` SET `ngaydk`='2024-05-08 10:00:00', `ngayhh`='2028-05-07 10:00:00' WHERE `MABHYT`='BHYT20250002';
UPDATE `bhyt` SET `ngaydk`='2023-09-17 10:00:00', `ngayhh`='2027-09-16 10:00:00' WHERE `MABHYT`='BHYT20250003';
UPDATE `bhyt` SET `ngaydk`='2025-03-21 10:00:00', `ngayhh`='2029-03-20 10:00:00' WHERE `MABHYT`='BHYT20250004';
UPDATE `bhyt` SET `ngaydk`='2024-11-03 10:00:00', `ngayhh`='2028-11-02 10:00:00' WHERE `MABHYT`='BHYT20250005';

UPDATE `bhyt` SET `ngaydk`='2023-06-25 10:00:00', `ngayhh`='2027-06-24 10:00:00' WHERE `MABHYT`='BHYT20250006';
UPDATE `bhyt` SET `ngaydk`='2024-01-14 10:00:00', `ngayhh`='2028-01-13 10:00:00' WHERE `MABHYT`='BHYT20250007';
UPDATE `bhyt` SET `ngaydk`='2025-07-09 10:00:00', `ngayhh`='2029-07-08 10:00:00' WHERE `MABHYT`='BHYT20250008';
UPDATE `bhyt` SET `ngaydk`='2023-12-02 10:00:00', `ngayhh`='2027-12-01 10:00:00' WHERE `MABHYT`='BHYT20250009';
UPDATE `bhyt` SET `ngaydk`='2024-07-28 10:00:00', `ngayhh`='2028-07-27 10:00:00' WHERE `MABHYT`='BHYT20250010';

UPDATE `bhyt` SET `ngaydk`='2025-01-06 10:00:00', `ngayhh`='2029-01-05 10:00:00' WHERE `MABHYT`='BHYT20250011';
UPDATE `bhyt` SET `ngaydk`='2023-03-30 10:00:00', `ngayhh`='2027-03-29 10:00:00' WHERE `MABHYT`='BHYT20250012';
UPDATE `bhyt` SET `ngaydk`='2024-09-11 10:00:00', `ngayhh`='2028-09-10 10:00:00' WHERE `MABHYT`='BHYT20250013';
UPDATE `bhyt` SET `ngaydk`='2023-07-07 10:00:00', `ngayhh`='2027-07-06 10:00:00' WHERE `MABHYT`='BHYT20250014';
UPDATE `bhyt` SET `ngaydk`='2025-05-18 10:00:00', `ngayhh`='2029-05-17 10:00:00' WHERE `MABHYT`='BHYT20250015';

UPDATE `bhyt` SET `ngaydk`='2024-02-22 10:00:00', `ngayhh`='2028-02-21 10:00:00' WHERE `MABHYT`='BHYT20250016';
UPDATE `bhyt` SET `ngaydk`='2023-10-29 10:00:00', `ngayhh`='2027-10-28 10:00:00' WHERE `MABHYT`='BHYT20250017';
UPDATE `bhyt` SET `ngaydk`='2024-12-15 10:00:00', `ngayhh`='2028-12-14 10:00:00' WHERE `MABHYT`='BHYT20250018';
UPDATE `bhyt` SET `ngaydk`='2023-05-12 10:00:00', `ngayhh`='2027-05-11 10:00:00' WHERE `MABHYT`='BHYT20250019';
UPDATE `bhyt` SET `ngaydk`='2025-09-02 10:00:00', `ngayhh`='2029-09-01 10:00:00' WHERE `MABHYT`='BHYT20250020';

UPDATE `bhyt` SET `ngaydk`='2024-04-04 10:00:00', `ngayhh`='2028-04-03 10:00:00' WHERE `MABHYT`='BHYT20250021';
UPDATE `bhyt` SET `ngaydk`='2023-11-19 10:00:00', `ngayhh`='2027-11-18 10:00:00' WHERE `MABHYT`='BHYT20250022';
UPDATE `bhyt` SET `ngaydk`='2025-02-14 10:00:00', `ngayhh`='2029-02-13 10:00:00' WHERE `MABHYT`='BHYT20250023';
UPDATE `bhyt` SET `ngaydk`='2024-08-09 10:00:00', `ngayhh`='2028-08-08 10:00:00' WHERE `MABHYT`='BHYT20250024';
UPDATE `bhyt` SET `ngaydk`='2023-04-01 10:00:00', `ngayhh`='2027-03-31 10:00:00' WHERE `MABHYT`='BHYT20250025';

UPDATE `bhyt` SET `ngaydk`='2025-06-23 10:00:00', `ngayhh`='2029-06-22 10:00:00' WHERE `MABHYT`='BHYT20250026';
UPDATE `bhyt` SET `ngaydk`='2024-03-16 10:00:00', `ngayhh`='2028-03-15 10:00:00' WHERE `MABHYT`='BHYT20250027';
UPDATE `bhyt` SET `ngaydk`='2023-08-24 10:00:00', `ngayhh`='2027-08-23 10:00:00' WHERE `MABHYT`='BHYT20250028';
UPDATE `bhyt` SET `ngaydk`='2024-10-06 10:00:00', `ngayhh`='2028-10-05 10:00:00' WHERE `MABHYT`='BHYT20250029';
UPDATE `bhyt` SET `ngaydk`='2025-04-12 10:00:00', `ngayhh`='2029-04-11 10:00:00' WHERE `MABHYT`='BHYT20250030';

UPDATE `bhyt` SET `ngaydk`='2023-01-27 10:00:00', `ngayhh`='2027-01-26 10:00:00' WHERE `MABHYT`='BHYT20250031';
UPDATE `bhyt` SET `ngaydk`='2024-06-19 10:00:00', `ngayhh`='2028-06-18 10:00:00' WHERE `MABHYT`='BHYT20250032';
UPDATE `bhyt` SET `ngaydk`='2025-08-15 10:00:00', `ngayhh`='2029-08-14 10:00:00' WHERE `MABHYT`='BHYT20250033';
UPDATE `bhyt` SET `ngaydk`='2023-09-05 10:00:00', `ngayhh`='2027-09-04 10:00:00' WHERE `MABHYT`='BHYT20250034';
UPDATE `bhyt` SET `ngaydk`='2024-02-02 10:00:00', `ngayhh`='2028-02-01 10:00:00' WHERE `MABHYT`='BHYT20250035';

UPDATE `bhyt` SET `ngaydk`='2025-11-08 10:00:00', `ngayhh`='2029-11-07 10:00:00' WHERE `MABHYT`='BHYT20250036';
UPDATE `bhyt` SET `ngaydk`='2023-06-03 10:00:00', `ngayhh`='2027-06-02 10:00:00' WHERE `MABHYT`='BHYT20250037';
UPDATE `bhyt` SET `ngaydk`='2024-12-01 10:00:00', `ngayhh`='2028-11-30 10:00:00' WHERE `MABHYT`='BHYT20250038';
UPDATE `bhyt` SET `ngaydk`='2024-07-02 10:00:00', `ngayhh`='2028-07-01 10:00:00' WHERE `MABHYT`='BHYT20250039';
UPDATE `bhyt` SET `ngaydk`='2023-03-03 10:00:00', `ngayhh`='2027-03-02 10:00:00' WHERE `MABHYT`='BHYT20250040';

UPDATE `bhyt` SET `ngaydk`='2025-02-28 10:00:00', `ngayhh`='2029-02-27 10:00:00' WHERE `MABHYT`='BHYT20250041';
UPDATE `bhyt` SET `ngaydk`='2024-09-29 10:00:00', `ngayhh`='2028-09-28 10:00:00' WHERE `MABHYT`='BHYT20250042';
UPDATE `bhyt` SET `ngaydk`='2023-10-11 10:00:00', `ngayhh`='2027-10-10 10:00:00' WHERE `MABHYT`='BHYT20250043';
UPDATE `bhyt` SET `ngaydk`='2025-06-06 10:00:00', `ngayhh`='2029-06-05 10:00:00' WHERE `MABHYT`='BHYT20250044';
UPDATE `bhyt` SET `ngaydk`='2024-01-08 10:00:00', `ngayhh`='2028-01-07 10:00:00' WHERE `MABHYT`='BHYT20250045';


-- thuoc
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH001', 'Paracetamol', 'Thuốc điều trị/giảm triệu chứng', 25000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH002', 'Amoxicillin', 'Thuốc điều trị/giảm triệu chứng', 30000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH003', 'Ibuprofen', 'Thuốc điều trị/giảm triệu chứng', 30000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH004', 'Omeprazole', 'Thuốc điều trị/giảm triệu chứng', 12000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH005', 'Vitamin C', 'Thuốc điều trị/giảm triệu chứng', 25000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH006', 'Metformin', 'Thuốc điều trị/giảm triệu chứng', 5000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH007', 'Amlodipine', 'Thuốc điều trị/giảm triệu chứng', 10000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH008', 'Cefixime', 'Thuốc điều trị/giảm triệu chứng', 25000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH009', 'Loratadine', 'Thuốc điều trị/giảm triệu chứng', 5000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH010', 'Salbutamol', 'Thuốc điều trị/giảm triệu chứng', 25000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH011', 'Diclofenac', 'Thuốc điều trị/giảm triệu chứng', 15000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH012', 'Clarithromycin', 'Thuốc điều trị/giảm triệu chứng', 30000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH013', 'Losartan', 'Thuốc điều trị/giảm triệu chứng', 15000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH014', 'Prednisone', 'Thuốc điều trị/giảm triệu chứng', 25000.0);
INSERT INTO `thuoc` (`MATHUOC`, `tenthuoc`, `congdung`, `giatien`) VALUES ('TH015', 'ORS', 'Thuốc điều trị/giảm triệu chứng', 30000.0);

-- soluongthuoc
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (1, 'TH003', 147, '2027-04-17 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (2, 'TH004', 79, '2028-02-01 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (3, 'TH012', 327, '2026-08-19 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (4, 'TH012', 210, '2026-08-15 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (5, 'TH001', 349, '2027-10-19 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (6, 'TH009', 486, '2027-12-13 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (7, 'TH003', 79, '2027-11-20 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (8, 'TH002', 485, '2026-12-25 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (9, 'TH002', 354, '2026-08-26 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (10, 'TH011', 491, '2027-02-13 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (11, 'TH007', 111, '2028-01-22 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (12, 'TH004', 346, '2028-02-16 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (13, 'TH001', 367, '2026-09-09 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (14, 'TH007', 386, '2028-02-05 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (15, 'TH010', 317, '2027-05-07 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (16, 'TH015', 183, '2027-01-13 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (17, 'TH011', 416, '2027-05-05 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (18, 'TH004', 185, '2027-07-28 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (19, 'TH003', 393, '2028-04-08 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (20, 'TH005', 284, '2027-05-07 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (21, 'TH015', 434, '2026-08-31 10:00:00');
INSERT INTO `soluongthuoc` (`MALO`, `MATHUOC`, `soluong`, `hsd`) VALUES (22, 'TH001', 284, '2028-03-15 10:00:00');

-- donthuoc
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0001', 'BS011', 'BN001');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0002', 'BS018', 'BN002');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0003', 'BS005', 'BN003');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0004', 'BS014', 'BN004');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0005', 'BS008', 'BN005');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0006', 'BS005', 'BN006');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0007', 'BS006', 'BN007');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0008', 'BS008', 'BN008');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0009', 'BS016', 'BN009');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0010', 'BS008', 'BN010');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0011', 'BS003', 'BN011');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0012', 'BS018', 'BN012');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0013', 'BS009', 'BN013');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0014', 'BS014', 'BN014');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0015', 'BS002', 'BN015');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0016', 'BS007', 'BN016');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0017', 'BS004', 'BN017');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0018', 'BS010', 'BN018');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0019', 'BS006', 'BN019');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0020', 'BS010', 'BN020');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0021', 'BS015', 'BN021');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0022', 'BS006', 'BN022');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0023', 'BS008', 'BN023');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0024', 'BS002', 'BN024');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0025', 'BS019', 'BN025');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0026', 'BS001', 'BN026');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0027', 'BS017', 'BN027');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0028', 'BS015', 'BN028');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0029', 'BS017', 'BN029');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0030', 'BS015', 'BN030');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0031', 'BS008', 'BN031');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0032', 'BS011', 'BN032');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0033', 'BS005', 'BN033');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0034', 'BS015', 'BN034');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0035', 'BS001', 'BN035');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0036', 'BS013', 'BN036');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0037', 'BS016', 'BN037');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0038', 'BS013', 'BN038');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0039', 'BS001', 'BN039');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0040', 'BS014', 'BN040');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0041', 'BS007', 'BN041');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0042', 'BS009', 'BN042');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0043', 'BS008', 'BN043');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0044', 'BS007', 'BN044');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0045', 'BS004', 'BN045');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0046', 'BS020', 'BN046');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0047', 'BS019', 'BN047');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0048', 'BS007', 'BN048');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0049', 'BS010', 'BN049');
INSERT INTO `donthuoc` (`MADT`, `MABS`, `MABN`) VALUES ('DT0050', 'BS018', 'BN050');

-- chitiet_dh
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0001', 'TH013', 3, 6);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0002', 'TH012', 7, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0003', 'TH009', 1, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0004', 'TH003', 1, 3);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0005', 'TH011', 2, 3);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0006', 'TH015', 4, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0007', 'TH012', 6, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0008', 'TH005', 3, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0009', 'TH004', 4, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0010', 'TH004', 1, 6);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0011', 'TH013', 5, 3);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0012', 'TH006', 1, 1);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0013', 'TH001', 2, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0014', 'TH010', 9, 1);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0015', 'TH012', 7, 1);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0016', 'TH006', 7, 1);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0017', 'TH012', 5, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0018', 'TH009', 3, 2);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0019', 'TH010', 10, 3);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0020', 'TH004', 7, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0021', 'TH008', 8, 6);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0022', 'TH011', 2, 3);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0023', 'TH011', 5, 2);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0024', 'TH004', 8, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0025', 'TH004', 7, 4);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0026', 'TH015', 2, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0027', 'TH008', 1, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0028', 'TH011', 9, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0029', 'TH007', 9, 4);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0030', 'TH005', 4, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0031', 'TH005', 8, 1);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0032', 'TH006', 9, 1);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0033', 'TH012', 4, 1);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0034', 'TH007', 1, 2);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0035', 'TH014', 10, 4);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0036', 'TH014', 7, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0037', 'TH004', 5, 4);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0038', 'TH012', 3, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0039', 'TH015', 7, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0040', 'TH003', 8, 2);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0041', 'TH008', 6, 3);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0042', 'TH014', 2, 4);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0043', 'TH011', 2, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0044', 'TH014', 1, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0045', 'TH010', 4, 4);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0046', 'TH010', 2, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0047', 'TH001', 5, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0048', 'TH002', 10, 6);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0049', 'TH014', 10, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0050', 'TH007', 6, 1);

-- sokhambenh
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0001', 'BN001', '2025-12-12 10:00:00', 'Đau dạ dày', 'Nặng', 'Điều trị', 'DT0001', 'K006');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0002', 'BN002', '2025-12-20 10:00:00', 'Viêm họng', 'Nhẹ', 'Điều trị', 'DT0002', 'K009');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0003', 'BN003', '2025-12-09 10:00:00', 'Mất ngủ', 'Nặng', 'Ổn định', 'DT0003', 'K003');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0004', 'BN004', '2025-12-09 10:00:00', 'Cảm cúm', 'Trung bình', 'Ổn định', 'DT0004', 'K007');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0005', 'BN005', '2025-11-26 10:00:00', 'Viêm da', 'Trung bình', 'Điều trị', 'DT0005', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0006', 'BN006', '2025-12-15 10:00:00', 'Đau dạ dày', 'Trung bình', 'Ổn định', 'DT0006', 'K003');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0007', 'BN007', '2025-11-21 10:00:00', 'Viêm phế quản', 'Nặng', 'Điều trị', 'DT0007', 'K003');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0008', 'BN008', '2025-11-28 10:00:00', 'Viêm họng', 'Trung bình', 'Ổn định', 'DT0008', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0009', 'BN009', '2025-11-21 10:00:00', 'Đau lưng', 'Trung bình', 'Theo dõi', 'DT0009', 'K008');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0010', 'BN010', '2025-12-14 10:00:00', 'Viêm phế quản', 'Trung bình', 'Theo dõi', 'DT0010', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0011', 'BN011', '2025-11-30 10:00:00', 'Viêm da', 'Trung bình', 'Điều trị', 'DT0011', 'K002');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0012', 'BN012', '2025-11-22 10:00:00', 'Tiểu đường', 'Nhẹ', 'Điều trị', 'DT0012', 'K009');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0013', 'BN013', '2025-12-07 10:00:00', 'Dị ứng', 'Nặng', 'Theo dõi', 'DT0013', 'K005');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0014', 'BN014', '2025-12-08 10:00:00', 'Mất ngủ', 'Nhẹ', 'Theo dõi', 'DT0014', 'K007');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0015', 'BN015', '2025-12-04 10:00:00', 'Viêm da', 'Nặng', 'Điều trị', 'DT0015', 'K001');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0016', 'BN016', '2025-11-20 10:00:00', 'Dị ứng', 'Nặng', 'Theo dõi', 'DT0016', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0017', 'BN017', '2025-12-11 10:00:00', 'Viêm phế quản', 'Trung bình', 'Theo dõi', 'DT0017', 'K002');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0018', 'BN018', '2025-12-07 10:00:00', 'Viêm phế quản', 'Nặng', 'Điều trị', 'DT0018', 'K005');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0019', 'BN019', '2025-12-08 10:00:00', 'Viêm da', 'Nhẹ', 'Theo dõi', 'DT0019', 'K003');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0020', 'BN020', '2025-12-02 10:00:00', 'Mất ngủ', 'Nặng', 'Theo dõi', 'DT0020', 'K005');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0021', 'BN021', '2025-12-14 10:00:00', 'Viêm da', 'Trung bình', 'Điều trị', 'DT0021', 'K008');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0022', 'BN022', '2025-12-04 10:00:00', 'Mất ngủ', 'Trung bình', 'Ổn định', 'DT0022', 'K003');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0023', 'BN023', '2025-11-25 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Ổn định', 'DT0023', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0024', 'BN024', '2025-11-23 10:00:00', 'Viêm họng', 'Trung bình', 'Theo dõi', 'DT0024', 'K001');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0025', 'BN025', '2025-12-08 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Điều trị', 'DT0025', 'K010');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0026', 'BN026', '2025-12-07 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Điều trị', 'DT0026', 'K001');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0027', 'BN027', '2025-12-13 10:00:00', 'Viêm họng', 'Trung bình', 'Ổn định', 'DT0027', 'K009');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0028', 'BN028', '2025-12-01 10:00:00', 'Dị ứng', 'Trung bình', 'Điều trị', 'DT0028', 'K008');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0029', 'BN029', '2025-11-22 10:00:00', 'Đau dạ dày', 'Nặng', 'Theo dõi', 'DT0029', 'K009');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0030', 'BN030', '2025-11-30 10:00:00', 'Tiểu đường', 'Nặng', 'Theo dõi', 'DT0030', 'K008');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0031', 'BN031', '2025-11-28 10:00:00', 'Tiểu đường', 'Nhẹ', 'Theo dõi', 'DT0031', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0032', 'BN032', '2025-12-16 10:00:00', 'Đau dạ dày', 'Nhẹ', 'Theo dõi', 'DT0032', 'K006');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0033', 'BN033', '2025-12-07 10:00:00', 'Viêm phế quản', 'Trung bình', 'Điều trị', 'DT0033', 'K003');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0034', 'BN034', '2025-11-24 10:00:00', 'Viêm phế quản', 'Trung bình', 'Điều trị', 'DT0034', 'K008');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0035', 'BN035', '2025-12-05 10:00:00', 'Cảm cúm', 'Trung bình', 'Theo dõi', 'DT0035', 'K001');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0036', 'BN036', '2025-11-27 10:00:00', 'Viêm da', 'Nặng', 'Ổn định', 'DT0036', 'K007');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0037', 'BN037', '2025-12-05 10:00:00', 'Cảm cúm', 'Trung bình', 'Theo dõi', 'DT0037', 'K008');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0038', 'BN038', '2025-12-06 10:00:00', 'Đau dạ dày', 'Nặng', 'Điều trị', 'DT0038', 'K007');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0039', 'BN039', '2025-12-02 10:00:00', 'Cảm cúm', 'Nhẹ', 'Điều trị', 'DT0039', 'K001');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0040', 'BN040', '2025-12-19 10:00:00', 'Tiểu đường', 'Trung bình', 'Theo dõi', 'DT0040', 'K007');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0041', 'BN041', '2025-11-26 10:00:00', 'Viêm phế quản', 'Trung bình', 'Theo dõi', 'DT0041', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0042', 'BN042', '2025-12-20 10:00:00', 'Viêm da', 'Nhẹ', 'Theo dõi', 'DT0042', 'K005');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0043', 'BN043', '2025-11-20 10:00:00', 'Cảm cúm', 'Nhẹ', 'Ổn định', 'DT0043', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0044', 'BN044', '2025-12-16 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Theo dõi', 'DT0044', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0045', 'BN045', '2025-11-28 10:00:00', 'Tiểu đường', 'Trung bình', 'Ổn định', 'DT0045', 'K002');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0046', 'BN046', '2025-11-24 10:00:00', 'Đau dạ dày', 'Trung bình', 'Ổn định', 'DT0046', 'K010');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0047', 'BN047', '2025-11-29 10:00:00', 'Viêm phế quản', 'Trung bình', 'Điều trị', 'DT0047', 'K010');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0048', 'BN048', '2025-11-24 10:00:00', 'Tăng huyết áp', 'Nhẹ', 'Điều trị', 'DT0048', 'K004');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0049', 'BN049', '2025-12-17 10:00:00', 'Mất ngủ', 'Nhẹ', 'Theo dõi', 'DT0049', 'K005');
INSERT INTO `sokhambenh` (`MASKB`, `MABN`, `ngaykham`, `tenbenh`, `giaidoan`, `tinhtrang`, `MADT`, `MAKHOA`) VALUES ('SKB0050', 'BN050', '2025-12-04 10:00:00', 'Dị ứng', 'Nhẹ', 'Theo dõi', 'DT0050', 'K009');

-- lamviec
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K001', 'BS001', 16);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K001', 'BS002', 4);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K002', 'BS003', 14);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K002', 'BS004', 12);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K003', 'BS005', 21);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K003', 'BS006', 15);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K004', 'BS007', 23);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K004', 'BS008', 5);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K005', 'BS009', 14);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K005', 'BS010', 6);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K006', 'BS011', 24);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K006', 'BS012', 17);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K007', 'BS013', 21);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K007', 'BS014', 9);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K008', 'BS015', 20);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K008', 'BS016', 18);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K009', 'BS017', 25);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K009', 'BS018', 16);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K010', 'BS019', 15);
INSERT INTO `lamviec` (`MAKHOA`, `MABS`, `namkn`) VALUES ('K010', 'BS020', 14);

-- nhapvien
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN001', '2025-12-03 10:00:00', 'PHG001', 1);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN002', '2025-12-19 10:00:00', 'PHG001', 2);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN003', '2025-12-02 10:00:00', 'PHG001', 3);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN004', '2025-12-10 10:00:00', 'PHG001', 4);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN005', '2025-12-16 10:00:00', 'PHG002', 1);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN006', '2025-12-15 10:00:00', 'PHG002', 2);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN007', '2025-12-11 10:00:00', 'PHG002', 3);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN008', '2025-12-16 10:00:00', 'PHG002', 4);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN009', '2025-12-16 10:00:00', 'PHG003', 1);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN010', '2025-12-02 10:00:00', 'PHG003', 2);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN011', '2025-12-15 10:00:00', 'PHG003', 3);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN012', '2025-12-11 10:00:00', 'PHG003', 4);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN013', '2025-12-10 10:00:00', 'PHG004', 1);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN014', '2025-11-30 10:00:00', 'PHG004', 2);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN015', '2025-12-13 10:00:00', 'PHG004', 3);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN016', '2025-12-09 10:00:00', 'PHG004', 4);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN017', '2025-12-13 10:00:00', 'PHG005', 1);
INSERT INTO `nhapvien` (`MABN`, `ngaynv`, `MAPHG`, `sogiuong`) VALUES ('BN018', '2025-12-11 10:00:00', 'PHG005', 2);

-- xuatvien
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN001', '2025-12-08 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN002', '2025-12-23 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN003', '2025-12-05 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN004', '2025-12-17 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN005', '2025-12-17 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN006', '2025-12-16 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN007', '2025-12-17 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN008', '2025-12-20 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN009', '2025-12-23 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN010', '2025-12-05 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN011', '2025-12-16 10:00:00');
INSERT INTO `xuatvien` (`MABN`, `ngayxv`) VALUES ('BN012', '2025-12-12 10:00:00');

-- thannhan
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN001', 'Nguyễn Thị Hồng', 'M', '0889520597', 'Số 60, Hà Nội');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN002', 'Trần Văn Khánh', 'F', '0846023439', 'Số 117, Hải Phòng');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN003', 'Lê Thị Thu', 'M', '0853258988', 'Số 91, Thái Bình');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN004', 'Phạm Đức Minh', 'F', '0842949803', 'Số 123, Đà Nẵng');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN005', 'Hoàng Thị Lan', 'M', '0821631697', 'Số 456, Cần Thơ');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN006', 'Vũ Văn Thành', 'F', '0847437115', 'Số 789, Nha Trang');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN007', 'Bùi Thị Mai', 'M', '0870505620', 'Số 321, Vũng Tàu');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN008', 'Đặng Văn Hùng', 'F', '0842730796', 'Số 654, Huế');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN009', 'Ngô Thị Hạnh', 'M', '0872372114', 'Số 123, Cần Thơ');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN010', 'Phan Văn Quân', 'F', '0886483924', 'Số 456, Đà Nẵng');

INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN011', 'Đinh Thị Hoa', 'M', '0891917334', 'Số 789, Nha Trang');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN012', 'Tạ Văn Phúc', 'F', '0899682738', 'Số 321, Vũng Tàu');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN013', 'Trương Thị Ngọc', 'M', '0860867083', 'Số 123, Cần Thơ');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN014', 'Lưu Văn Sơn', 'F', '0855150390', 'Số 456, Đà Nẵng');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN015', 'Hồ Thị Oanh', 'M', '0813852048', 'Số 789, Nha Trang');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN016', 'Mai Văn Cường', 'F', '0876344695', 'Số 321, Vũng Tàu');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN017', 'Chu Thị Trang', 'M', '0853622663', 'Số 654, Huế');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN018', 'Đoàn Văn Huy', 'F', '0834406132', 'Số 123, Cần Thơ');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN019', 'Cao Thị Yến', 'M', '0875437844', 'Số 456, Đà Nẵng');
INSERT INTO `thannhan` (`MABN`, `hoten`, `gioitinh`, `sdt`, `diachi`) VALUES ('BN020', 'Lâm Văn Khải', 'F', '0838470244', 'Số 789, Nha Trang');


-- hoadon
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0001', 'BHYT20250001', 'DT0001', 'BN001', 549000.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0002', 'BHYT20250002', 'DT0002', 'BN002', 492000.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0003', 'BHYT20250003', 'DT0003', 'BN003', 361000.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0004', 'BHYT20250004', 'DT0004', 'BN004', 726000.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0005', 'BHYT20250005', 'DT0005', 'BN005', 106000.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0006', 'BHYT20250006', 'DT0006', 'BN006', 124000.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0007', 'BHYT20250007', 'DT0007', 'BN007', 386000.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0008', 'BHYT20250008', 'DT0008', 'BN008', 265000.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0009', 'BHYT20250009', 'DT0009', 'BN009', 409600.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0010', 'BHYT20250010', 'DT0010', 'BN010', 202400.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0011', 'BHYT20250011', 'DT0011', 'BN011', 115000.0);
INSERT INTO `hoadon` (`MAHD`, `MABHYT`, `MADT`, `MABN`, `tongtien`) VALUES ('HD0012', 'BHYT20250012', 'DT0012', 'BN012', 101000.0);


SET FOREIGN_KEY_CHECKS=1;


