from backend.db import db

class Medicine(db.Model):
    __tablename__ = 'thuoc'

    MATHUOC = db.Column(db.String(50), primary_key=True)
    tenthuoc = db.Column(db.String(100), nullable=False)
    congdung = db.Column(db.String(200), nullable=False)
    giatien = db.Column(db.Float, nullable=False)
    
    def __init__(self, MATHUOC, tenthuoc, congdung, giatien):
        self.MATHUOC = MATHUOC
        self.tenthuoc = tenthuoc
        self.congdung = congdung
        self.giatien = giatien
