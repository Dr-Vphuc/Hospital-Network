from backend.db import db

class Prescription(db.Model):
    __tablename__ = 'donthuoc'

    MADT = db.Column(db.String(50), primary_key=True)
    MABS = db.Column(db.String(50), db.ForeignKey('bacsi.MABS'), nullable=False)
    MABN = db.Column(db.String(50), db.ForeignKey('benhnhan.MABN'), nullable=False)

    def __init__(self, MADT, MABS, MABN):
        self.MADT = MADT
        self.MABS = MABS
        self.MABN = MABN