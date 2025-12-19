from backend.repositories.doctor_repository import DoctorRepository
from backend.db import db

class DoctorService:
    def __init__(self):
        self.doctor_repository = DoctorRepository()
        
    def get_all_doctors(self):
        
        # join doctor with khoa to get department name
        doctors = self.doctor_repository.get_all_doctors_with_department()
            
        doctors_list = []
        for doctor, tenkhoa in doctors:
            doctor_data = {
                'hoten': doctor.hoten,
                'sdt': doctor.sdt,
                'phongkham': doctor.phongkham,
                'bangcap': doctor.bangcap,
                'trangthai': doctor.trangthai,
                'khoa': tenkhoa
            }
            doctors_list.append(doctor_data)
        return doctors_list
    