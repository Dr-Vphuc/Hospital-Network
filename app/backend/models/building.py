from backend.db import db

class Building(db.Model):
    __tablename__ = 'toanha'

    MAKHOA = db.Column(db.Integer, primary_key=True)
    MAPHG = db.Column(db.Integer, nullable=False)
    tentoa = db.Column(db.String(100), nullable=False)
    
    def __init__(self, MAKHOA, MAPHG, tentoa):
        self.MAKHOA = MAKHOA
        self.MAPHG = MAPHG
        self.tentoa = tentoa