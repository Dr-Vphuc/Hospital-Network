-- Recalculate hoadon.tongtien = (so_ngay_nhap_vien * gia_phong) + tien_thuoc
-- Then apply BHYT discount: -80% (patient pays 20%).
--
-- Assumptions (based on your schema in hospital_db_backup.sql):
--   hoadon(MAHD, MABHYT, MADT, MABN, tongtien)
--   nhapvien(MABN, ngaynv, MAPHG, sogiuong)
--   xuatvien(MABN, ngayxv)
--   phongbenh(MAPHG, MAKHOA, sogiuong, gia)
--   chitiet_dh(MADT, MATHUOC, soluong, songayuong)
--   thuoc(MATHUOC, tenthuoc, giatien, ...)
--
-- Notes:
--   - This uses (DATEDIFF + 1) so a same-day stay counts as 1 day.
--   - If there are multiple nhapvien rows per patient, this picks the earliest admission (MIN).
--   - If there are multiple xuatvien rows per patient, this picks the latest discharge (MAX).
--   - Drug cost is aggregated by MADT from chitiet_dh.
--   - Discount is applied when MABHYT is not null (your hoadon schema requires NOT NULL anyway).

UPDATE hoadon h
JOIN (
    SELECT MABN, MIN(ngaynv) AS ngaynv, SUBSTRING_INDEX(GROUP_CONCAT(MAPHG ORDER BY ngaynv ASC), ',', 1) AS MAPHG
    FROM nhapvien
    GROUP BY MABN
) nv ON nv.MABN = h.MABN
JOIN (
    SELECT MABN, MAX(ngayxv) AS ngayxv
    FROM xuatvien
    GROUP BY MABN
) xv ON xv.MABN = h.MABN
JOIN phongbenh pb ON pb.MAPHG = nv.MAPHG
LEFT JOIN (
    SELECT ct.MADT, SUM(ct.soluong * t.giatien) AS drug_cost
    FROM chitiet_dh ct
    JOIN thuoc t ON t.MATHUOC = ct.MATHUOC
    GROUP BY ct.MADT
) d ON d.MADT = h.MADT
SET h.tongtien =
    (
      (
        (GREATEST(DATEDIFF(xv.ngayxv, nv.ngaynv), 0) + 1) * pb.gia
        + COALESCE(d.drug_cost, 0)
      )
      * (CASE WHEN h.MABHYT IS NOT NULL THEN 0.2 ELSE 1 END)
    );

-- Optional: quickly inspect a few rows
-- SELECT h.MAHD, h.MABN, h.MADT, h.MABHYT, h.tongtien FROM hoadon h ORDER BY h.MAHD LIMIT 20;

-- UPDATE lịch khám
UPDATE bacsi
SET trangthai = CASE
  WHEN MABS IN ('BS001','BS002','BS003','BS004','BS005','BS006','BS007','BS008','BS009','BS010','BS011','BS012')
    THEN 1
  ELSE 0
END;
--
UPDATE donthuoc dt
JOIN bacsi b ON b.MABS = dt.MABS
SET dt.MABS = (
  SELECT MABS
  FROM bacsi
  WHERE trangthai = 1
  ORDER BY RAND()
  LIMIT 1
)
WHERE b.trangthai = 0;

-- UPDATE khoa khớp với sổ khám bệnh
UPDATE sokhambenh sk
JOIN donthuoc dt ON dt.MADT = sk.MADT
JOIN bacsi b ON b.MABS = dt.MABS
SET sk.MAKHOA = b.MAKHOA;

