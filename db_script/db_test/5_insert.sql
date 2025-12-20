-- Thêm dữ liệu tái khám của bệnh nhân

-- thêm lịch sử mua thuốc
INSERT INTO donthuoc (MADT, MABS, MABN) VALUES
('DT051', 'BS001', 'BN001'),
('DT052', 'BS002', 'BN001'),
('DT053', 'BS003', 'BN002'),
('DT054', 'BS004', 'BN002'),
('DT055', 'BS005', 'BN003'),
('DT056', 'BS006', 'BN003'),
('DT057', 'BS007', 'BN004'),
('DT058', 'BS008', 'BN004'),
('DT059', 'BS009', 'BN005'),
('DT060', 'BS010', 'BN005');

-- Thêm lịch sử khám bệnh
INSERT INTO sokhambenh (MASKB, MABN, ngaykham, tenbenh, giaidoan, tinhtrang, MADT, MAKHOA) VALUES
('SK051', 'BN001', '2025-09-03 09:10:00', 'Viêm họng',       'Nhẹ',  'Tái khám', 'DT051', 'K001'),
('SK052', 'BN001', '2025-11-18 14:30:00', 'Viêm họng',       'Ổn',   'Theo dõi', 'DT052', 'K001'),

('SK053', 'BN002', '2025-08-22 08:40:00', 'Đau dạ dày',      'Vừa',  'Tái khám', 'DT053', 'K002'),
('SK054', 'BN002', '2025-12-02 10:05:00', 'Đau dạ dày',      'Ổn',   'Theo dõi', 'DT054', 'K002'),

('SK055', 'BN003', '2025-07-11 16:15:00', 'Viêm xoang',      'Vừa',  'Tái khám', 'DT055', 'K003'),
('SK056', 'BN003', '2025-10-07 09:50:00', 'Viêm xoang',      'Nhẹ',  'Đỡ nhiều', 'DT056', 'K003'),

('SK057', 'BN004', '2025-06-28 11:20:00', 'Dị ứng thời tiết','Nhẹ',  'Tái khám', 'DT057', 'K004'),
('SK058', 'BN004', '2025-09-26 15:00:00', 'Dị ứng thời tiết','Ổn',   'Theo dõi', 'DT058', 'K004'),

('SK059', 'BN005', '2025-05-19 13:35:00', 'Thiếu ngủ',       'Nhẹ',  'Tư vấn',   'DT059', 'K005'),
('SK060', 'BN005', '2025-08-30 09:25:00', 'Thiếu ngủ',       'Ổn',   'Theo dõi', 'DT060', 'K005');

-- Bệnh nhân có thể mua thuốc nhưng không khám, hoặc mua nhiều thuốc khác nhau
INSERT INTO chitiet_dh (MADT, MATHUOC, soluong, songayuong) VALUES
('DT051', 'T001', 2, 5),
('DT051', 'T003', 1, 3),
('DT052', 'T001', 1, 3),

('DT053', 'T004', 2, 7),
('DT054', 'T004', 1, 5),

('DT055', 'T002', 2, 5),
('DT056', 'T002', 1, 3);
