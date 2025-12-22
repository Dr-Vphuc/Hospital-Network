from backend.repositories.examination_repository import ExaminationRepository
from backend.repositories.prescription_repository import PrescriptionRepository
from backend.services.admin.patient_service import PatientService
from backend.repositories.medicine_repository import MedicineRepository
from backend.db import db
from datetime import datetime

CURRENT_DATE = datetime.today().date()

class ExaminationService:
    def __init__(self):
        self.examination_repository = ExaminationRepository()
        self.prescription_repository = PrescriptionRepository()
        self.medicine_repository = MedicineRepository()
        
    def get_all_prescriptions_with_patients(self, doctor_faculty_id=None):
        return self.prescription_repository.get_all_prescriptions_with_patients(doctor_faculty_id)
    
    def get_examination_by_patient_id(self, patient_id):
        return self.examination_repository.get_all_examinations_by_patient(patient_id)
    
    def add_examination(self, data):
        new_examination = self.examination_repository.add_examination(
            MASKB=self.examination_repository.get_next_examination_id(),
            MABN=data['MABN'],
            ngaykham=CURRENT_DATE.strftime('%Y-%m-%d'),
            tenbenh=data['tenbenh'],
            tinhtrang=data['tinhtrang'],
            giaidoan=data['giaidoan'],
            MADT=data['MADT'],
            MAKHOA=data['MAKHOA']
        )
        return new_examination
    
    def add_prescription(self, data):
        MADT = self.examination_repository.get_next_donthuoc_id()
        new_prescription = self.prescription_repository.add_prescription(
            MADT=MADT,
            MABN=data['MABN'],
            MABS=data['MABS'],
        )
        return MADT
    
    def add_chitiet_dh(self, data):
        medicine_id = MedicineRepository().get_id_by_name(data['tenthuoc'])
        data['mathuoc'] = medicine_id
        new_chitiet_dh = self.prescription_repository.add_chitiet_dh(
            madhd=data['MADT'],
            mathuoc=data['mathuoc'],
            soluong=data['soluong'],
            songayuong=data['songayuong']
        )
        return new_chitiet_dh