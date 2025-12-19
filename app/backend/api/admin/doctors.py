from . import admin_bp, admin_required
from flask import render_template
from backend.services.admin.doctor_service import DoctorService
from backend.services.admin.doctor_portal_service import DoctorPortalService
from backend.repositories.faculty_repository import FacultyRepository
from backend.repositories.doctor_repository import DoctorRepository

@admin_bp.route('/doctors', methods=['GET'])
@admin_required
def doctors():
    all_doctors = DoctorService().get_all_doctors()
    all_faculty_names = FacultyRepository().get_all_faculties_names()
    
    return render_template(
        'admin/doctors.html', 
        all_doctors=all_doctors, 
        all_faculty_names=all_faculty_names
    )

@admin_bp.route('/doctors/<string:doctor_id>', methods=['GET'])
@admin_required
def doctor_portal(doctor_id):
    doctor_name = DoctorRepository().get_doctor_by_id(doctor_id).hoten
    examinations_data = DoctorPortalService().get_patients_examinations_of_doctor(doctor_id)
    print(examinations_data)
    return render_template(
        'admin/doctor_portal.html', 
        doctor_name=doctor_name,
        examinations_data=examinations_data
    )