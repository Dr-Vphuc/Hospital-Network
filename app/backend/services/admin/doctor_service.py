from backend.repositories.doctor_repository import DoctorRepository
from backend.repositories.faculty_repository import FacultyRepository
from backend.db import db

class DoctorService:
    def __init__(self):
        self.doctor_repository = DoctorRepository()
        self.faculty_repository = FacultyRepository()
        
    def get_all_doctors(self):
        
        # join doctor with khoa to get department name
        doctors = self.doctor_repository.get_all_doctors_with_department()
            
        doctors_list = []
        for doctor, tenkhoa in doctors:
            doctor_data = {
                'MABS': doctor.MABS,
                'hoten': doctor.hoten,
                'sdt': doctor.sdt,
                'phongkham': doctor.phongkham,
                'bangcap': doctor.bangcap,
                'trangthai': doctor.trangthai,
                'khoa': tenkhoa
            }
            doctors_list.append(doctor_data)
        return doctors_list
    
    def add_doctor(self, data):
        new_doctor = self.doctor_repository.add_doctor(
            MABS=self.doctor_repository.get_next_doctor_id(),
            hoten=data['hoten'],
            sdt=data['sdt'],
            phongkham=data['phongkham'],
            bangcap=self.get_bangcap_options(data['bangcap']),
            makhoa=self.faculty_repository.get_id_by_name(data['khoa'])
        )
        return new_doctor
    
    def get_bangcap_options(self, bangcap):
        if bangcap == 'Bác sĩ':
            return 'BS'
        elif bangcap == 'Thạc sĩ':
            return 'ThS'
        elif bangcap == 'Tiến sĩ':
            return 'TS'
        elif bangcap == 'Bác sĩ chuyên khoa I':
            return 'CKI'
        elif bangcap == 'Bác sĩ chuyên khoa II':
            return 'CKII'