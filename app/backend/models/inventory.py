from backend.db import db

class Inventory(db.Model):
    __tablename__ = 'soluongthuoc'

    MALO = db.Column(db.Integer, primary_key=True, autoincrement=True)
    MATHUOC = db.Column(db.String(50), db.ForeignKey('thuoc.MATHUOC'), nullable=False)
    soluong = db.Column(db.Integer, nullable=False)
    hsd = db.Column(db.Date, nullable=False)
    
    def __init__(self, MATHUOC, soluong, hsd):
        self.MATHUOC = MATHUOC
        self.soluong = soluong
        self.hsd = hsd