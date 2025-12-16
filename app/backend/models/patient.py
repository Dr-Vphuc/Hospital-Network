from app.backend.db import db

class Patient(db.Model):
    __tablename__ = 'benhnhan'

    __id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    __hoten = db.Column(db.String(100), nullable=False)
    __ngaysinh = db.Column(db.Date, nullable=False)
    __sdt = db.Column(db.String(15), nullable=False)
    __diachi = db.Column(db.String(200), nullable=False)
    __loaibn = db.Column(db.String(50), nullable=False, default='Thuong')

    def __init__(self, hoten, ngaysinh, sdt, diachi, loaibn='Thuong'):
        self.__hoten = hoten
        self.__ngaysinh = ngaysinh
        self.__sdt = sdt
        self.__diachi = diachi
        self.__loaibn = loaibn
    
    @property
    def id(self):
        return self.__id
    @property
    def hoten(self):
        return self.__hoten
    @property
    def ngaysinh(self): 
        return self.__ngaysinh
    @property
    def sdt(self):
        return self.__sdt
    @property
    def diachi(self):
        return self.__diachi
    @property
    def loaibn(self):
        return self.__loaibn
    
