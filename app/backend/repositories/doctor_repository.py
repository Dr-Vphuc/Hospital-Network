from backend.models.doctor import Doctor
from backend.db import db

class DoctorRepository:
    def get_doctor_by_id(self, doctor_id):
        return Doctor.query.filter_by(__id=doctor_id).first()

    def add_doctor(self, hoten, gioitinh, ngaysinh, sdt, phongkham, bangcap, makhoa):
        new_doctor = Doctor(hoten, gioitinh, ngaysinh, sdt, phongkham, bangcap, makhoa)
        db.session.add(new_doctor)
        db.session.commit()
        return new_doctor

    def update_doctor(self, doctor_id, **kwargs):
        doctor = self.get_doctor_by_id(doctor_id)
        if not doctor:
            return None
        for key, value in kwargs.items():
            if hasattr(doctor, f"_{Doctor.__name__}__{key}"):
                setattr(doctor, f"_{Doctor.__name__}__{key}", value)
        db.session.commit()
        return doctor

    def delete_doctor(self, doctor_id):
        doctor = self.get_doctor_by_id(doctor_id)
        if not doctor:
            return False
        db.session.delete(doctor)
        db.session.commit()
        return True
    
    def get_total_active_doctors(self):
        """Get total number of active doctors
        SQL equivalent:
        SELECT COUNT(*) FROM doctor WHERE is_active = TRUE
        """
        return Doctor.query.filter_by(trangthai=True).count()