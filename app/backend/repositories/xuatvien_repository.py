from app.backend.models.xuatvien import XuatVien
from app.backend.db import db

class XuatVienRepository:
    def get_xuatvien_by_mabn(self, mabn):
        return XuatVien.query.filter_by(MABN=mabn).first()

    def add_xuatvien(self, MABN, ngayxv=None):
        new_xuatvien = XuatVien(MABN, ngayxv)
        db.session.add(new_xuatvien)
        db.session.commit()
        return new_xuatvien

    def update_xuatvien(self, mabn, **kwargs):
        xuatvien = self.get_xuatvien_by_mabn(mabn)
        if not xuatvien:
            return None
        for key, value in kwargs.items():
            if hasattr(xuatvien, key):
                setattr(xuatvien, key, value)
        db.session.commit()
        return xuatvien

    def delete_xuatvien(self, mabn):
        xuatvien = self.get_xuatvien_by_mabn(mabn)
        if not xuatvien:
            return False
        db.session.delete(xuatvien)
        db.session.commit()
        return True