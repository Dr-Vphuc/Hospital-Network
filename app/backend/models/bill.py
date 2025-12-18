from backend.db import db

class Bill(db.Model):
    __tablename__ = 'hoadon'

    MAHD = db.Column(db.String(50), primary_key=True)
    MABHYT = db.Column(db.String(50), db.ForeignKey('bhyt.MABHYT'), nullable=True)
    MADT = db.Column(db.String(50), nullable=False)
    MABN = db.Column(db.String(50), db.ForeignKey('benhnhan.MABN'), nullable=False)
    tongtien = db.Column(db.Float, nullable=False)

    def __init__(self, MAHD, MABHYT, MADT, MABN, tongtien):
        self.MAHD = MAHD
        self.MABHYT = MABHYT
        self.MADT = MADT
        self.MABN = MABN
        self.tongtien = tongtien