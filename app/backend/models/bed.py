from backend.db import db

class Bed(db.Model):
    __tablename__ = 'giuong'

    MAPHG = db.Column(db.String(50), db.ForeignKey('phongbenh.MAPHG'), primary_key=True)
    so = db.Column(db.Integer, primary_key=True)
    tinhtrang = db.Column(db.Integer, nullable=False)  # 0: available, 1: occupied
    
    def __init__(self, MAPHG, so, tinhtrang):
        self.MAPHG = MAPHG
        self.so = so
        self.tinhtrang = tinhtrang    