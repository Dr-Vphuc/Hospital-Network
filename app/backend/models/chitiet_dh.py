from backend.db import db

class ChiTietDH(db.Model):
    __tablename__ = 'chitiet_dh'

    MADT = db.Column(db.String(50), db.ForeignKey('donhang.MADH'), primary_key=True)
    MATHUOC = db.Column(db.String(50), db.ForeignKey('thuoc.MATHUOC'), primary_key=True)
    soluong = db.Column(db.Integer, nullable=False)

    def __init__(self, MADT, MATHUOC, soluong):
        self.MADT = MADT
        self.MATHUOC = MATHUOC
        self.soluong = soluong