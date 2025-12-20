-- Thêm dữ liệu tái khám của bệnh nhân

-- thêm lịch sử mua thuốc

INSERT INTO donthuoc (MADT, MABS, MABN) VALUES
('DT0051', 'BS001', 'BN001'),
('DT0052', 'BS002', 'BN006'),
('DT0053', 'BS003', 'BN004'),
('DT0054', 'BS004', 'BN001'),
('DT0055', 'BS005', 'BN006'),
('DT0056', 'BS006', 'BN031'),
('DT0057', 'BS007', 'BN004'),
('DT0058', 'BS008', 'BN004'),
('DT0059', 'BS009', 'BN032'),
('DT0060', 'BS010', 'BN025');

-- Thêm lịch sử khám bệnh

INSERT INTO sokhambenh (MASKB, MABN, ngaykham, tenbenh, giaidoan, tinhtrang, MADT, MAKHOA) VALUES
('SK051', 'BN001', '2025-09-03 09:10:00', 'Viêm họng', 'Nhẹ', 'Tái khám', 'DT0051', 'K001'),
('SK052', 'BN001', '2025-11-18 14:30:00', 'Viêm họng', 'Ổn', 'Theo dõi', 'DT0052', 'K001'),

('SK053', 'BN002', '2025-08-22 08:40:00', 'Đau dạ dày', 'Vừa', 'Tái khám', 'DT0053', 'K002'),
('SK054', 'BN002', '2025-12-02 10:05:00', 'Đau dạ dày', 'Ổn', 'Theo dõi', 'DT0054', 'K002'),
('SK055', 'BN003', '2025-07-11 16:15:00', 'Viêm xoang', 'Vừa', 'Tái khám', 'DT0055', 'K003'),
('SK056', 'BN003', '2025-10-07 09:50:00', 'Viêm xoang', 'Nhẹ', 'Đỡ nhiều', 'DT0056', 'K003'),

('SK057', 'BN004', '2025-06-28 11:20:00', 'Dị ứng thời tiết','Nhẹ', 'Tái khám', 'DT0057', 'K004'),
('SK058', 'BN004', '2025-09-26 15:00:00', 'Dị ứng thời tiết','Ổn', 'Theo dõi', 'DT0058', 'K004'),

('SK059', 'BN005', '2025-05-19 13:35:00', 'Thiếu ngủ', 'Nhẹ', 'Tư vấn', 'DT0059', 'K005'),
('SK060', 'BN005', '2025-08-30 09:25:00', 'Thiếu ngủ', 'Ổn', 'Theo dõi', 'DT0060', 'K005');

-- Bệnh nhân có thể mua thuốc nhưng không khám, hoặc mua nhiều thuốc khác nhau

INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0051', 'TH001', 2, 5); 
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0052', 'TH002', 1, 7);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0053', 'TH003', 3, 4);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0054', 'TH004', 2, 6);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0055', 'TH005', 1, 5);
INSERT INTO `chitiet_dh` (`MADT`, `MATHUOC`, `soluong`, `songayuong`) VALUES ('DT0056', 'TH006', 4, 3);