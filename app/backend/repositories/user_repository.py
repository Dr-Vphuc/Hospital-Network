from backend.models.user import User
from backend.models.doctor import Doctor
from backend.db import db

class UserRepository:
    def get_user_by_username(self, username):
        return User.query.filter_by(username=username).first()
    def add_user(self, username, password, role, ref_id=None):
        new_user = User(username=username, password=password, role=role, ref_id=ref_id)
        db.session.add(new_user)
        db.session.commit()
        return new_user
    def update_user(self, username, **kwargs):
        user = self.get_user_by_username(username)
        if not user:
            return None
        for key, value in kwargs.items():
            if hasattr(user, f"_{User.__name__}__{key}"):
                setattr(user, f"_{User.__name__}__{key}", value)
        db.session.commit()
        return user
    def delete_user(self, username):
        user = self.get_user_by_username(username)
        if not user:
            return False
        db.session.delete(user)
        db.session.commit()
        return True
    
    def get_doctorname_by_username(self, username):
        doctor = (
            db.session.query(User, Doctor.hoten)
            .filter_by(username=username)
            .join(Doctor, User.ref_id == Doctor.MABS)
            .first()
        )
        
        return doctor.hoten if doctor else None
    
    def get_faculty_id_by_doctor_username(self, username):
        doctor = (
            db.session.query(User, Doctor.makhoa)
            .filter_by(username=username)
            .join(Doctor, User.ref_id == Doctor.MABS)
            .first()
        )
        
        return doctor.makhoa if doctor else None
    
    def get_doctor_id_by_username(self, username):
        user = (
            db.session.query(User.ref_id)
            .filter_by(username=username)
            .first()
        )
        
        return user.ref_id if user else None