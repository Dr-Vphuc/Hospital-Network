from backend.repositories.prescription_repository import PrescriptionRepository
from backend.db import db

class PrescriptionService:
    def __init__(self):
        self.prescription_repository = PrescriptionRepository()
        
    def get_all_prescriptions_with_patients(self):
        return self.prescription_repository.get_all_prescriptions_with_patients()