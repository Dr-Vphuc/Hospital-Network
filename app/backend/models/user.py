from backend.db import db
from flask_login import UserMixin

class User(db.Model, UserMixin):
    __tablename__ = 'user'

    username = db.Column(db.String(50), primary_key=True)
    password = db.Column(db.String(255), nullable=False)
    role = db.Column(db.String(20), nullable=False)
    ref_id = db.Column(db.String(50), nullable=False)

    