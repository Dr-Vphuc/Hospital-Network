from backend.db import db

class Relative(db.Model):
    __tablename__ = 'thannhan'
    
    MABN = db.Column(db.String(50), db.ForeignKey('benhnhan.MABN'), primary_key=True)
    hoten = db.Column(db.String(100), nullable=False)
    quanhe = db.Column(db.String(100), nullable=False)
    sdt = db.Column(db.String(15), nullable=True)
    diachi = db.Column(db.String(200), nullable=True)
    
    def __init__(self, MABN, hoten, quanhe, sdt=None, diachi=None):
        self.MABN = MABN
        self.hoten = hoten
        self.quanhe = quanhe
        self.sdt = sdt
        self.diachi = diachi