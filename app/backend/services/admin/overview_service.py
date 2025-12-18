from backend.repositories.patient_repository import PatientRepository
from backend.repositories.doctor_repository import DoctorRepository
from backend.repositories.examination_repository import ExaminationRepository

class OverviewService:
    def __init__(self):
        self.patients_repo = PatientRepository()
        self.doctors_repo = DoctorRepository()
        self.examinations_repo = ExaminationRepository()

    def get_total_current_inpatients(self):
        
        result = self.patients_repo.get_total_current_inpatients()
        return len(result)
    
    def get_total_active_doctors(self):
        return self.doctors_repo.get_total_active_doctors()
    
    def get_all_examinations_today(self):
        return self.examinations_repo.get_all_examinations_today()
    
    def get_30days_revenue(self):
        return self.patients_repo.get_30days_revenue()