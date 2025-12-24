from datetime import datetime
from backend.repositories.patient_repository import PatientRepository
from backend.repositories.doctor_repository import DoctorRepository
from backend.repositories.examination_repository import ExaminationRepository
from backend.repositories.faculty_repository import FacultyRepository

class OverviewService:
    def __init__(self):
        self.patients_repo = PatientRepository()
        self.doctors_repo = DoctorRepository()
        self.examinations_repo = ExaminationRepository()
        self.faculty_repo = FacultyRepository()

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
    
    def get_total_patients_per_faculty(self):
        faculties = self.faculty_repo.get_all_faculties()
        patients_per_faculty = {}
        for faculty_id, faculty_name in faculties:
            patients_per_faculty[faculty_id] = (faculty_name, self.faculty_repo.get_total_patients_by_faculty(faculty_id))
        
        n_patients = []
        faculty_names = []
        for faculty in patients_per_faculty.values():
            n_patients.append(faculty[1])
            faculty_names.append(faculty[0])
            
        return n_patients, faculty_names
    
    def get_total_patient_per_faculties(self):
        faculties = self.faculty_repo.get_all_faculties()
        patients_per_faculty = {}
        for faculty_id, faculty_name in faculties:
            patients_per_faculty[faculty_id] = (
                self.examinations_repo.get_distinct_patients_by_faculties(faculty_id), 
                self.examinations_repo.get_total_examinations_by_faculty(faculty_id))
            
        patient_counts = []
        examination_counts = []
        faculty_names = []
        for faculty_id, faculty_name in faculties:
            faculty_names.append(faculty_name)
            patient_counts.append(len(patients_per_faculty[faculty_id][0]))
            examination_counts.append(patients_per_faculty[faculty_id][1])
            
        return patient_counts, examination_counts, faculty_names