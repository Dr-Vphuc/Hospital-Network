from werkzeug.security import generate_password_hash, check_password_hash
from flask_login import login_user
from . import auth_bp
from flask import request
from backend.models.user import User
from backend.db import db

@auth_bp.route('/register', methods=['POST'])
def register():
    username = request.form['username']
    password = request.form['password']

    user = User(
        username=username,
        password=generate_password_hash(password),
        role='USER'
    )

    db.session.add(user)
    db.session.commit()

    return "Dang ky thanh cong"

@auth_bp.route('/login', methods=['POST'])
def login():
    username = request.form['username']
    password = request.form['password']

    user = User.query.filter_by(username=username).first()

    if not user or not check_password_hash(user.password, password):
        return "Sai thong tin", 401

    login_user(user)
    return "Dang nhap thanh cong"
