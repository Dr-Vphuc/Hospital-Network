from app.backend.db import db

class Medicine(db.Model):
    __tablename__ = 'thuoc'

    __id = db.Column(db.String(50), primary_key=True)
    __tenthuoc = db.Column(db.String(100), nullable=False)
    __congdung = db.Column(db.String(200), nullable=False)
    __hsd = db.Column(db.Date, nullable=False)
    __giatien = db.Column(db.Float, nullable=False)

    def __init__(self, tenthuoc, congdung, hsd, giatien):
        self.__tenthuoc = tenthuoc
        self.__congdung = congdung
        self.__hsd = hsd
        self.__giatien = giatien

    @property
    def id(self):
        return self.__id   
    @property
    def tenthuoc(self):
        return self.__tenthuoc
    @property
    def congdung(self):
        return self.__congdung
    @property
    def hsd(self):
        return self.__hsd
    @property
    def gia(self):
        return self.__giatien