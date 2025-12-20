from backend.models.examination import Examination
from backend.models.prescription import Prescription
from backend.models.patient import Patient
from backend.models.doctor import Doctor
from backend.models.chitiet_dh import ChiTietDH
from backend.models.medicine import Medicine
from backend.db import db

class ExaminationRepository:
    def get_examination_by_maskb(self, maskb):
        return Examination.query.filter_by(MASKB=maskb).first()

    def add_examination(self, MASKB, MABN, MADT, MAKHOA, ngaykham, tenbenh, giaidoan, tinhtrang):
        new_examination = Examination(MASKB, MABN, MADT, MAKHOA, ngaykham, tenbenh, giaidoan, tinhtrang)
        db.session.add(new_examination)
        db.session.commit()
        return new_examination

    def update_examination(self, maskb, **kwargs):
        examination = self.get_examination_by_maskb(maskb)
        if not examination:
            return None
        for key, value in kwargs.items():
            if hasattr(examination, key):
                setattr(examination, key, value)
        db.session.commit()
        return examination

    def delete_examination(self, maskb):
        examination = self.get_examination_by_maskb(maskb)
        if not examination:
            return False
        db.session.delete(examination)
        db.session.commit()
        return True
    
    def get_all_examinations_today(self):
        return len(Examination.query.filter_by(ngaykham=db.func.current_date()).all())
    
    def get_distinct_patients_by_faculty(self, faculty_id):
        return Examination.query.filter_by(MAKHOA=faculty_id).distinct(Examination.MABN).all()
    
    def get_stable_patients_count_by_doctor(self, doctor_id):
        """Get count of stable patients for a given doctor
        SQL equivalent:
        SELECT COUNT(DISTINCT sk.mabn) FROM sokhambenh sk
        JOIN donthuoc dt ON sk.madt = dt.madt
        WHERE dt.mabs = :doctor_id AND sk.tinhtrang = 'Stable'
        """
        stable_patients_count = (
            db.session.query(db.func.count(db.distinct(Examination.MABN)))
            .join(Prescription, Prescription.MADT == Examination.MADT)
            .filter(
                Prescription.MABS == doctor_id,
                Examination.tinhtrang == 'Ổn định'
            )
            .scalar()
        )
        return stable_patients_count
    
    def get_all_examinations_days_by_doctor(self, doctor_id):
        """Get all examinations details for a given doctor
        SQL equivalent:
        SELECT sk.ngaykham, sk.MABN, dt.MABS FROM sokhambenh sk
        JOIN donthuoc dt ON dt.madt = sk.madt
        WHERE dt.mabs = :doctor_id
        """
        query_results = (
            db.session.query(Examination, Prescription)
            .join(Prescription, Prescription.MADT == Examination.MADT)
            .filter(Prescription.MABS == doctor_id)
            .all()
        )
        
        results = []
        for exam, prescription in query_results:
            exam_data = {
                'ngaykham': exam.ngaykham,
                'MABN': exam.MABN,
                'MABS': prescription.MABS
            }
            results.append(exam_data)
        
        return results
    
    def get_all_examinations_by_patient(self, patient_id):
        query_results = (
            db.session.query(Examination, Prescription, Doctor, Patient, ChiTietDH, Medicine)
            .join(Prescription, Prescription.MADT == Examination.MADT)
            .join(Doctor, Doctor.MABS == Prescription.MABS)
            .join(Patient, Patient.MABN == Examination.MABN)
            .join(ChiTietDH, ChiTietDH.MADT == Prescription.MADT)
            .join(Medicine, Medicine.MATHUOC == ChiTietDH.MATHUOC)
            .filter(Prescription.MABN == patient_id)
            .all()
        )
        
        result = []
        for exam, prescription, doctor, patient, chitietdh, medicine in query_results:
            exam_data = {
                'ngaykham': exam.ngaykham,
                'tinhtrang': exam.tinhtrang,
                'medicine_name': medicine.tenthuoc if medicine else None,
                'doctor': doctor.hoten if doctor else None
            }
            result.append(exam_data)
            
        return result