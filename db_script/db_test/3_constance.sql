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