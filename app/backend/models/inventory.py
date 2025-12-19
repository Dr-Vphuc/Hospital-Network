from backend.db import db

class Inventory(db.Model):
    __tablename__ = 'soluongthuoc'

    MALO = db.Column(db.String(50), primary_key=True)
    MATHUOC = db.Column(db.String(50), db.ForeignKey('thuoc.MATHUOC'), nullable=False)
    soluong = db.Column(db.Integer, nullable=False)
    hsd = db.Column(db.Date, nullable=False)
    
    def __init__(self, MALO, MATHUOC, soluong, hsd):
        self.MALO = MALO
        self.MATHUOC = MATHUOC
        self.soluong = soluong
        self.hsd = hsd