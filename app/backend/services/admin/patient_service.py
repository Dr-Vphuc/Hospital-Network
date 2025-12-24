from backend.models.patient import Patient
from backend.repositories.patient_repository import PatientRepository
from backend.models.nhapvien import NhapVien
from backend.repositories.room_repository import RoomRepository
from backend.repositories.bed_repository import BedRepository
from backend.db import db
from datetime import date
from datetime import datetime

CURRENT_YEAR = datetime.today().year
CURRENT_DATE = datetime.today().date()

class PatientService:
    def __init__(self):
        self.patients_repo = PatientRepository()
    
    def get_patient_details(self, faculty_id=None):
        if faculty_id:
            patient_ids = self.patients_repo.get_patients_id_by_faculty(faculty_id)
        else:
            patient_ids = self.patients_repo.get_all_patients_id()
        patients_details = []
        for patient_id in patient_ids:
            patient_info = self.patients_repo.get_patients_info(patient_id)
            if patient_info:                    
                patients_details.append({
                    'MABN': patient_info.Patient.MABN,
                    'hoten': patient_info.Patient.hoten,
                    'tuoi': CURRENT_YEAR - patient_info.Patient.ngaysinh.year if patient_info.Patient.ngaysinh else None,
                    'sdt': patient_info.Patient.sdt,
                    'ngaykham': patient_info.Examination.ngaykham.strftime('%Y-%m-%d') if patient_info.Examination and patient_info.Examination.ngaykham else None,
                    'tenkhoa': patient_info.Faculty.tenkhoa if patient_info.Faculty else None,
                    'status': patient_info.Patient.loaibn
                })
        
        return patients_details
    
    def get_relatives_by_patient_id(self, patient_id):
        return self.patients_repo.get_relatives_by_patient_id(patient_id)
    
    def add_patient(self, data):
        MABN = self.patients_repo.get_next_patient_id()
        new_patient = self.patients_repo.add_patient(
            MABN=MABN,
            hoten=data['hoten'],
            sdt=data['sdt'],
            loaibn=data['loaibenhnhan']
        )
        return MABN
    
    def get_next_patient_id(self):
        return self.patients_repo.get_next_patient_id()
    
    def get_last_patient_id(self):
        max_id = db.session.query(db.func.max(Patient.MABN)).scalar()
        return max_id
    
    def discharge_patient(self, patient_id):
        self.patients_repo.discharge_patient(patient_id)
        
        nhapvien = db.session.query(NhapVien.MAPHG, NhapVien.sogiuong).filter(NhapVien.MABN == patient_id).order_by(NhapVien.ngaynv.desc()).first()
        maphg = nhapvien[0]
        so = nhapvien[1]
        
        BedRepository().update_bed(maphg, so, tinhtrang=0)
        
    def update_loai_patient(self, data):
        patient = db.session.query(Patient).filter_by(MABN=data['MABN']).first()
        if patient:
            patient.loaibn = data['loaibenhnhan']
            db.session.commit()
            
    def get_loaibenhnhan_by_id(self, patient_id):
        patient = db.session.query(Patient).filter_by(MABN=patient_id).first()
        if patient:
            return patient.loaibn
        return None