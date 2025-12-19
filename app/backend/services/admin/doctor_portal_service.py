from backend.repositories.doctor_repository import DoctorRepository
from backend.models.patient import Patient
from backend.models.examination import Examination
from backend.models.prescription import Prescription
from backend.models.chitiet_dh import ChiTietDH
from backend.models.medicine import Medicine
from backend.db import db

class DoctorPortalService:
    def __init__(self):
        self.doctor_repository = DoctorRepository()
        
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