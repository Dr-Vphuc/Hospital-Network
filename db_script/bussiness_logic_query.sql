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