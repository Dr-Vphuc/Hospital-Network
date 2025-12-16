from app.backend.db import db

class Room(db.Model):
    __tablename__ = 'phongbenh'

    __id = db.Column(db.Integet, primary_key=True, autoincrement=True)
    __makhoa = db.Column(db.Integer, db.ForeignKey('khoa.__id'), nullable=False)
    __sogiuong = db.Column(db.Integer, nullable=False)
    __gia = db.Column(db.Float, nullable=False)

    def __init__(self, makhoa, sogiuong, gia):
        self.__makhoa = makhoa
        self.__sogiuong = sogiuong
        self.__gia = gia

    @property
    def id(self):
        return self.__id   
    @property
    def makhoa(self):
        return self.__makhoa
    @property
    def sogiuong(self):
        return self.__sogiuong
    @property
    def gia(self):
        return self.__gia