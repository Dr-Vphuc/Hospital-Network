from backend.db import db

class Patient(db.Model):
    __tablename__ = 'benhnhan'

    MABN = db.Column(db.String(50), primary_key=True)
    hoten = db.Column(db.String(100), nullable=False)
    ngaysinh = db.Column(db.Date, nullable=True)
    sdt = db.Column(db.String(15), nullable=False)
    diachi = db.Column(db.String(200), nullable=True)
    loaibn = db.Column(db.String(50), nullable=False)

    def __init__(self, MABN, hoten, sdt, loaibn):
        self.MABN = MABN
        self.hoten = hoten
        self.sdt = sdt
        self.loaibn = loaibn
    
    
