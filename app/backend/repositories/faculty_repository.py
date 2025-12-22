from backend.models.faculty import Faculty
from backend.models.examination import Examination
from backend.repositories.examination_repository import ExaminationRepository
from backend.repositories.xuatvien_repository import XuatVienRepository
from backend.repositories.nhapvien_repository import NhapVienRepository
from backend.db import db

class FacultyRepository:
    def get_faculty_by_id(self, faculty_id):
        return Faculty.query.filter_by(__id=faculty_id).first()

    def add_faculty(self, tenkhoa, matrg):
        new_faculty = Faculty(tenkhoa, matrg)
        db.session.add(new_faculty)
        db.session.commit()
        return new_faculty

    def update_faculty(self, faculty_id, **kwargs):
        faculty = self.get_faculty_by_id(faculty_id)
        if not faculty:
            return None
        for key, value in kwargs.items():
            if hasattr(faculty, f"_{Faculty.__name__}__{key}"):
                setattr(faculty, f"_{Faculty.__name__}__{key}", value)
        db.session.commit()
        return faculty

    def delete_faculty(self, faculty_id):
        faculty = self.get_faculty_by_id(faculty_id)
        if not faculty:
            return False
        db.session.delete(faculty)
        db.session.commit()
        return True
    
    def get_all_faculties(self):
        return [(faculty.MAKHOA, faculty.tenkhoa) for faculty in Faculty.query.all()]
    
    def get_all_faculties_names(self):
        return [faculty.tenkhoa for faculty in Faculty.query.all()]
    
    def get_total_patients_by_faculty(self, faculty_id):
        all_patients_in_faculty = ExaminationRepository().get_distinct_patients_by_faculty(faculty_id)
        all_patients_in_faculty_id = [patient.MABN for patient in all_patients_in_faculty]
        all_current_patients_id = NhapVienRepository().get_all_current_inpatients_id()
        
        resulting_patients_id = list(set(all_patients_in_faculty_id) & set(all_current_patients_id))
        return len(resulting_patients_id)
    
    def get_id_by_name(self, tenkhoa):
        faculty = Faculty.query.filter_by(tenkhoa=tenkhoa).first()
        if faculty:
            return faculty.MAKHOA
        return None