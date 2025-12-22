from werkzeug.security import generate_password_hash, check_password_hash
from flask_login import login_user
from . import auth_bp
from flask import request, url_for, redirect
from backend.models.user import User
from backend.repositories.doctor_repository import DoctorRepository
from backend.db import db

@auth_bp.route('/register', methods=['POST'])
def register():
    username = request.form['username']
    password = request.form['password']

    user = User(
        username=username,
        password=generate_password_hash(password),
        role='BENHNHAN',
    )

    db.session.add(user)
    db.session.commit()
    
    return redirect(url_for('user.login_page', registered=1))

@auth_bp.route('/login', methods=['POST'])
def login():
    username = request.form['username']
    password = request.form['password']

    user = User.query.filter_by(username=username).first()

    if not user or not check_password_hash(user.password, password):
        return redirect(url_for('user.login_page', error=1))

    login_user(user)
    
    role = user.role
    if role == 'DOCTOR':
        return redirect(url_for('doctor.doctor_examinations', username=user.username))
    elif role == 'ADMIN':
        return redirect(url_for('admin.overview'))

@auth_bp.route('/register_doctor', methods=['POST'])
def register_doctor():
    ref_id = DoctorRepository().get_last_doctor_id()
    username = 'b' + str(int(ref_id[2:]))
    password = str(int(ref_id[2:]))
    
    user = User(
        username=username,
        password=generate_password_hash(password),
        role='DOCTOR',
        ref_id=ref_id
    )

    db.session.add(user)
    db.session.commit()
    
    return redirect(url_for('user.login_page', registered=1)), username, password