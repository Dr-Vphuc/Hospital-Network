from backend.db import db

class Doctor(db.Model):
    __tablename__ = 'bacsi'

    MABS = db.Column(db.String(50), primary_key=True)
    hoten = db.Column(db.String(100), nullable=False)
    gioitinh = db.Column(db.String(10), nullable=False)
    ngaysinh = db.Column(db.Date, nullable=False)
    sdt = db.Column(db.String(15), nullable=False)
    phongkham = db.Column(db.String(100), nullable=False)
    bangcap = db.Column(db.String(100), nullable=False)
    makhoa = db.Column(db.String(50), db.ForeignKey('khoa.MAKHOA'), nullable=False)
    
    def __init__(self, MABS, hoten, gioitinh, ngaysinh, sdt, phongkham, bangcap, makhoa):
        self.MABS = MABS
        self.hoten = hoten
        self.gioitinh = gioitinh
        self.ngaysinh = ngaysinh
        self.sdt = sdt
        self.phongkham = phongkham
        self.bangcap = bangcap
        self.makhoa = makhoa
