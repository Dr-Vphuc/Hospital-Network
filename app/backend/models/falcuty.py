from app.backend.db import db

class Falcuty(db.Model):
    __tablename__ = 'khoa'

    __id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    __tenkhoa = db.Column(db.String(100), nullable=False)
    __matrg = db.Column(db.Integer, db.ForeignKey('bacsi.__id'), nullable=False)

    def __init__(self, tenkhoa, matrg):
        self.__tenkhoa = tenkhoa
        self.__matrg = matrg

    @property
    def id(self):
        return self.__id
    @property
    def tenkhoa(self):
        return self.__tenkhoa
    @property
    def matrg(self):
        return self.__matrg