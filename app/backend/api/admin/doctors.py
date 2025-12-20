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

@admin_bp.route('/doctors/<string:doctor_id>/examinations', methods=['GET'])
@admin_required
def doctor_examinations(doctor_id):
    doctor_name = DoctorRepository().get_doctor_by_id(doctor_id).hoten
    examinations_data = DoctorPortalService().get_patients_examinations_of_doctor(doctor_id)
    
    return render_template(
        'admin/doctor_portal.html', 
        doctor_name=doctor_name,
        doctor_id=doctor_id,
        active_tab='my-patients',
        examinations_data=examinations_data,
        total_patients=None,
        total_examinations=None,
        stable_patients_ratio=None,
        consultation_last_6_months=None,
        string_months=None
    )
    
@admin_bp.route('/doctors/<string:doctor_id>/performent', methods=['GET'])
@admin_required
def doctor_performent(doctor_id):
    doctor_name = DoctorRepository().get_doctor_by_id(doctor_id).hoten
    service = DoctorPortalService()
    total_patients = service.get_total_patients_of_doctor(doctor_id)
    total_examinations = service.get_total_examinations_of_doctor(doctor_id)
    stable_patients_ratio = service.get_stable_patient_ratio_of_doctor(doctor_id)
    consultation_last_6_months, string_months = service.get_consultation_last_6_months(doctor_id)
    
    return render_template(
        'admin/doctor_portal.html', 
        doctor_name=doctor_name,
        doctor_id=doctor_id,
        active_tab='performance',
        examinations_data=None,
        total_patients=total_patients,
        total_examinations=total_examinations,
        stable_patients_ratio=stable_patients_ratio,
        consultation_last_6_months=consultation_last_6_months,
        string_months=string_months
    )