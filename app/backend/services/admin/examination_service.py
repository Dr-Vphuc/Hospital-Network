from backend.repositories.examination_repository import ExaminationRepository
from backend.repositories.prescription_repository import PrescriptionRepository
from backend.db import db

class ExaminationService:
    def __init__(self):
        self.examination_repository = ExaminationRepository()
        self.prescription_repository = PrescriptionRepository()
        
    def get_all_prescriptions_with_patients(self):
        return self.prescription_repository.get_all_prescriptions_with_patients()
    
    def get_examination_by_patient_id(self, patient_id):
        return self.examination_repository.get_all_examinations_by_patient(patient_id)