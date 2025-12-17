# Tạo tài khoản admin
UPDATE `user` SET role = 'ADMIN' WHERE username = 'admin';

# Số bệnh nhân hiện tại (chưa xuất viện)
select * from benhnhan
left join xuatvien on benhnhan.mabn = xuatvien.mabn
where xuatvien.ngayxv is NULl or xuatvien.ngayxv > CURRENT_DATE;

# Tổng số bác sĩ dang hoạt động
select count(*) as 'Active Doctors' from bacsi where trangthai = TRUE;

# Tổng số lượt kham trong ngày
select * from sokhambenh 
where ngaykham = CURRENT_DATE;

update sokhambenh set ngaykham = CURRENT_DATE where ngaykham = '2025-12-17';

# Doanh thu trong 30 ngày qua từ các bệnh nhân xuất viện
WITH bn_xuatvien_30 AS (
    SELECT benhnhan.`MABN` FROM benhnhan
    LEFT JOIN xuatvien ON benhnhan.mabn = xuatvien.mabn
    WHERE xuatvien.ngayxv >= DATE_SUB(CURRENT_DATE, INTERVAL 30 DAY)
)
SELECT sum(tongtien) as 'Total Revenue Last 30 Days' FROM hoadon
WHERE hoadon.mabn IN (SELECT mabn FROM bn_xuatvien_30);