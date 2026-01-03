from backend.db import db

class Room(db.Model):
    __tablename__ = 'phongbenh'

    MAPHG = db.Column(db.String(50), primary_key=True)
    MAKHOA = db.Column(db.String(50), db.ForeignKey('khoa.MAKHOA'), nullable=False)
    sogiuong = db.Column(db.Integer, nullable=False)
    gia = db.Column(db.Float, nullable=False)

    def __init__(self, MAPHG, makhoa, sogiuong, gia):
        self.MAPHG = MAPHG
        self.makhoa = makhoa
        self.sogiuong = sogiuong
        self.gia = gia
