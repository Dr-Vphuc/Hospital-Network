from backend.db import db

class XuatVien(db.Model):
    __tablename__ = 'xuatvien'

    MABN = db.Column(db.String(50), db.ForeignKey('benhnhan.MABN'), primary_key=True)
    ngayxv = db.Column(db.Date, nullable=True)

    def __init__(self, MABN, ngayxv=None):
        self.MABN = MABN
        self.ngayxv = ngayxv