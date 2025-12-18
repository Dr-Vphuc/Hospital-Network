from datetime import datetime
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

    def get_total_patients_last_6_month(self):
        current_month = datetime.now().month
        last_6_months = [(current_month - i - 1) % 12 + 1 for i in range(6)]
        
        total_patients = []
        for month in reversed(last_6_months):
            count = self.patients_repo.get_total_patients_by_month(month)
            total_patients.append(count)

        def get_string_month():
            string_months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
            return [string_months[month - 1] for month in reversed(last_6_months)]

        return total_patients, get_string_month() 
    
    