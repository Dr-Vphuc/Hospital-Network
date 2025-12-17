from backend.db import db

class Examination(db.Model):
    __tablename__ = 'sokhambenh'

    MASKB = db.Column(db.String(50), primary_key=True)
    MABN = db.Column(db.String(50), db.ForeignKey('benhnhan.MABN'), nullable=False)
    MADT = db.Column(db.String(50), db.ForeignKey('donthuoc.MADT'), nullable=True)
    MAKHOA = db.Column(db.String(50), db.ForeignKey('khoa.MAKHOA'), nullable=False)
    ngaykham = db.Column(db.Date, nullable=False)
    tenbenh = db.Column(db.String(255), nullable=False)
    giaidoan = db.Column(db.String(255), nullable=False)
    tinhtrang = db.Column(db.String(255), nullable=False)

    def __init__(self, MASKB, MABN, MADT, MAKHOA, ngaykham, tenbenh, giaidoan, tinhtrang):
        self.MASKB = MASKB
        self.MABN = MABN
        self.MADT = MADT
        self.MAKHOA = MAKHOA
        self.ngaykham = ngaykham
        self.tenbenh = tenbenh
        self.giaidoan = giaidoan
        self.tinhtrang = tinhtrang