from backend.repositories.doctor_repository import DoctorRepository
from backend.models.patient import Patient
from backend.models.examination import Examination
from backend.models.prescription import Prescription
from backend.models.chitiet_dh import ChiTietDH
from backend.models.medicine import Medicine
from backend.repositories.examination_repository import ExaminationRepository
from backend.db import db

class DoctorPortalService:
    def __init__(self):
        self.doctor_repository = DoctorRepository()
        self.examination_repository = ExaminationRepository()
        
    def get_patients_examinations_of_doctor(self, doctor_id):
        """
        Join all benhnhan, sokhambenh, donthuoc, chitiet_dh, thuoc
        SELECT bn.hoten, sk.giaidoan, sk.ngaykham, sk.tinhtrang, t.tenthuoc, (ctdh.soluong * ctdh.songayuong) from sokhambenh sk
        JOIN benhnhan bn ON sk.mabn = bn.mabn
        JOIN donthuoc dt ON sk.`MADT` = dt.madt
        JOIN chitiet_dh ctdh ON dt.madt = ctdh.madt
        JOIN thuoc t ON ctdh.mathuoc = t.mathuoc
        """
        query_results = (
            db.session.query(Examination, Patient, Prescription, ChiTietDH, Medicine)
            .join(Patient, Examination.MABN == Patient.MABN)
            .join(Prescription, Prescription.MADT == Examination.MADT)   # inner join to match SQL
            .join(ChiTietDH, ChiTietDH.MADT == Prescription.MADT)
            .join(Medicine, Medicine.MATHUOC == ChiTietDH.MATHUOC)
            .filter(Prescription.MABS == doctor_id)
            .all()
        )
        
        results = []
        for exam, patient, prescription, chi_tiet, medicine in query_results:
            exam_data = {
            'patient_name': patient.hoten,
            'last_visit': exam.ngaykham,
            'giaidoan': exam.giaidoan,
            'health_status': exam.tinhtrang,
            'medicine_name': medicine.tenthuoc if medicine else None,
            'total_medicine_quantity': (chi_tiet.soluong * chi_tiet.songayuong) if chi_tiet else 0
            }
            results.append(exam_data)
            
        return results
    
    def get_total_patients_of_doctor(self, doctor_id):
        """Get total number of unique patients for a given doctor
        SQL equivalent:
        SELECT COUNT(DISTINCT sk.mabn) FROM sokhambenh sk
        JOIN donthuoc dt ON sk.madt = dt.madt
        WHERE dt.mabs = :doctor_id
        """
        total_patients = (
            db.session.query(db.func.count(db.distinct(Examination.MABN)))
            .join(Prescription, Prescription.MADT == Examination.MADT)
            .filter(Prescription.MABS == doctor_id)
            .scalar()
        )
        return total_patients
    
    def get_total_examinations_of_doctor(self, doctor_id):
        """Get total number of examinations for a given doctor
        SQL equivalent:
        SELECT COUNT(*) FROM sokhambenh sk
        WHERE dt.mabs = :doctor_id
        """
        total_examinations = (
            db.session.query(db.func.count(Examination.MASKB))
            .join(Prescription, Prescription.MADT == Examination.MADT)
            .filter(Prescription.MABS == doctor_id)
            .scalar()
        )
        return total_examinations
    
    def get_stable_patient_ratio_of_doctor(self, doctor_id):
        total_patients = self.get_total_patients_of_doctor(doctor_id)
        if total_patients == 0:
            return 0.0
        
        total_stable_patients = self.examination_repository.get_stable_patients_count_by_doctor(doctor_id)
        
        return total_stable_patients / total_patients