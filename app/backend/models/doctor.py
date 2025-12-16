from app.backend.db import db

class Doctor(db.Model):
    __tablename__ = 'bacsi'

    __id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    __hoten = db.Column(db.String(100), nullable=False)
    __gioitinh = db.Column(db.String(10), nullable=False)
    __ngaysinh = db.Column(db.Date, nullable=False)
    __sdt = db.Column(db.String(15), nullable=False)
    __phongkham = db.Column(db.String(100), nullable=False)
    __bangcap = db.Column(db.String(100), nullable=False)
    __makhoa = db.Column(db.Integer, db.ForeignKey('khoa.__id'), nullable=False)

    def __init__(self, hoten, gioitinh, ngaysinh, sdt, phongkham, bangcap, makhoa):
        self.__hoten = hoten
        self.__gioitinh = gioitinh
        self.__ngaysinh = ngaysinh
        self.__sdt = sdt
        self.__phongkham = phongkham
        self.__bangcap = bangcap
        self.__makhoa = makhoa

    @property
    def id(self):
        return self.__id
    @property
    def hoten(self):
        return self.__hoten
    @property
    def gioitinh(self):
        return self.__gioitinh
    @property
    def ngaysinh(self):
        return self.__ngaysinh
    @property
    def sdt(self):
        return self.__sdt
    @property
    def phongkham(self):
        return self.__phongkham
    @property
    def bangcap(self):
        return self.__bangcap
    @property
    def makhoa(self):
        return self.__makhoa