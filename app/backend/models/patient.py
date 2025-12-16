from backend.db import db

class Patient(db.Model):
    __tablename__ = 'benhnhan'

    MABN = db.Column(db.String(50), primary_key=True)
    hoten = db.Column(db.String(100), nullable=False)
    ngaysinh = db.Column(db.Date, nullable=False)
    sdt = db.Column(db.String(15), nullable=False)
    diachi = db.Column(db.String(200), nullable=False)
    loaibn = db.Column(db.String(50), nullable=False)

    def __init__(self, MABN, hoten, ngaysinh, sdt, diachi, loaibn):
        self.MABN = MABN
        self.hoten = hoten
        self.ngaysinh = ngaysinh
        self.sdt = sdt
        self.diachi = diachi
        self.loaibn = loaibn
    
    
