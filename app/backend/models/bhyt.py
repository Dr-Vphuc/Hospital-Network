from backend.db import db

class BHYT(db.Model):
    __tablename__ = 'bhyt'

    MABHYT = db.Column(db.String(50), primary_key=True)
    MABN = db.Column(db.String(50), db.ForeignKey('benhnhan.MABN'), nullable=False)
    ngaydk = db.Column(db.Date, nullable=False)
    ngayhh = db.Column(db.Date, nullable=False)

    def __init__(self, MABHYT, MABN, ngaydk, ngayhh):
        self.MABHYT = MABHYT
        self.MABN = MABN
        self.ngaydk = ngaydk
        self.ngayhh = ngayhh