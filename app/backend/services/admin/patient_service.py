from backend.repositories.patient_repository import PatientRepository
from backend.db import db
from datetime import date
from datetime import datetime

CURRENT_YEAR = datetime.today().year
CURRENT_DATE = datetime.today().date()

class PatientService:
    def __init__(self):
        self.patients_repo = PatientRepository()
    
    def get_patient_details(self):
        patient_ids = self.patients_repo.get_all_patients_id()
        patients_details = []
        for patient_id in patient_ids:
            patient_info = self.patients_repo.get_patients_info(patient_id)
            if patient_info:
                status = ''
                if patient_info.XuatVien and patient_info.XuatVien.ngayxv and patient_info.XuatVien.ngayxv.date() <= CURRENT_DATE:
                    status = 'Đã xuất viện'
                elif patient_info.NhapVien and patient_info.NhapVien.ngaynv and patient_info.NhapVien.ngaynv.date() <= CURRENT_DATE:
                    status = 'Nội trú'
                else:
                    status = 'Ngoại trú'
                    
                patients_details.append({
                    'MABN': patient_info.Patient.MABN,
                    'hoten': patient_info.Patient.hoten,
                    'tuoi': CURRENT_YEAR - patient_info.Patient.ngaysinh.year if patient_info.Patient.ngaysinh else None,
                    'sdt': patient_info.Patient.sdt,
                    'ngaykham': patient_info.Examination.ngaykham.strftime('%Y-%m-%d') if patient_info.Examination and patient_info.Examination.ngaykham else None,
                    'tenkhoa': patient_info.Faculty.tenkhoa if patient_info.Faculty else None,
                    'status': status
                })
        
        return patients_details