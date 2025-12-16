from app.backend.models.patient import Patient
from app.backend.db import db

class PatientRepository:
    def get_patient_by_id(self, patient_id):
        return Patient.query.filter_by(__id=patient_id).first()

    def add_patient(self, hoten, ngaysinh, sdt, diachi, loaibn):
        new_patient = Patient(hoten, ngaysinh, sdt, diachi, loaibn)
        db.session.add(new_patient)
        db.session.commit()
        return new_patient

    def update_patient(self, patient_id, **kwargs):
        patient = self.get_patient_by_id(patient_id)
        if not patient:
            return None
        for key, value in kwargs.items():
            if hasattr(patient, f"_{Patient.__name__}__{key}"):
                setattr(patient, f"_{Patient.__name__}__{key}", value)
        db.session.commit()
        return patient

    def delete_patient(self, patient_id):
        patient = self.get_patient_by_id(patient_id)
        if not patient:
            return False
        db.session.delete(patient)
        db.session.commit()
        return True