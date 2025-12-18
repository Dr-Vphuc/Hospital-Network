from backend.db import db

class NhapVien(db.Model):
    __tablename__ = 'nhapvien'

    MABN = db.Column(db.String(50), db.ForeignKey('benhnhan.MABN'), primary_key=True)
    ngaynv = db.Column(db.Date, nullable=False)
    MAPHG = db.Column(db.String(50), db.ForeignKey('phong.MAPHG'), nullable=False)
    sogiuong = db.Column(db.Integer, nullable=False)

    def __init__(self, MABN, ngaynv, MAPHG, sogiuong):
        self.MABN = MABN
        self.ngaynv = ngaynv
        self.MAPHG = MAPHG
        self.sogiuong = sogiuong