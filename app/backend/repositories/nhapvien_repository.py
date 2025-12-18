from backend.models.nhapvien import NhapVien
from backend.repositories.xuatvien_repository import XuatVienRepository
from backend.db import db

class NhapVienRepository:
    def get_nhapvien_by_mabn(self, MABN):
        return NhapVien.query.filter_by(MABN=MABN).first()

    def add_nhapvien(self, MABN, ngaynv, MAPHG, sogiuong):
        new_nhapvien = NhapVien(MABN, ngaynv, MAPHG, sogiuong)
        db.session.add(new_nhapvien)
        db.session.commit()
        return new_nhapvien

    def update_nhapvien(self, MABN, **kwargs):
        nhapvien = self.get_nhapvien_by_mabn(MABN)
        if not nhapvien:
            return None
        for key, value in kwargs.items():
            if hasattr(nhapvien, key):
                setattr(nhapvien, key, value)
        db.session.commit()
        return nhapvien

    def delete_nhapvien(self, MABN):
        nhapvien = self.get_nhapvien_by_mabn(MABN)
        if not nhapvien:
            return False
        db.session.delete(nhapvien)
        db.session.commit()
        return True

    def get_all_current_inpatients_id(self):
        all_nhapvien = NhapVien.query.all()
        all_nhapvien_id = [nhapvien.MABN for nhapvien in all_nhapvien]
        all_discharged_patients_id = XuatVienRepository().get_all_discharged_patients_id()
        # minus discharged patients
        current_inpatients_id = list(set(all_nhapvien_id) - set(all_discharged_patients_id))
        return current_inpatients_id