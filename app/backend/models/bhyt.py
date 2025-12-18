from backend.db import db

class BHYT(db.Model):
    __tablename__ = 'bhyt'

    MABHYT = db.Column(db.String(50), primary_key=True)
    MABN = db.Column(db.String(50), db.ForeignKey('benhnhan.MABN'), nullable=False)
    ngaybatdau = db.Column(db.Date, nullable=False)
    ngayketthuc = db.Column(db.Date, nullable=False)

    def __init__(self, MABHYT, MABN, ngaybatdau, ngayketthuc):
        self.MABHYT = MABHYT
        self.MABN = MABN
        self.ngaybatdau = ngaybatdau
        self.ngayketthuc = ngayketthuc