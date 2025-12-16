from backend.db import db

class Faculty(db.Model):
    __tablename__ = 'khoa'

    MAKHOA = db.Column(db.String(50), primary_key=True)
    tenkhoa = db.Column(db.String(100), nullable=False)
    matrg = db.Column(db.String(50), db.ForeignKey('bacsi.MABS'), nullable=False)

    def __init__(self, MAKHOA, tenkhoa, matrg):
        self.MAKHOA = MAKHOA
        self.tenkhoa = tenkhoa
        self.matrg = matrg
