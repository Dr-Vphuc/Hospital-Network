from . import doctor_bp, doctor_required
from flask import render_template, request, jsonify
from flask_login import current_user
from backend.services.admin.doctor_service import DoctorService
from backend.services.admin.doctor_portal_service import DoctorPortalService
from backend.repositories.faculty_repository import FacultyRepository
from backend.repositories.doctor_repository import DoctorRepository
from backend.repositories.user_repository import UserRepository
from backend.api.auth.routes import register_doctor

@doctor_bp.route('/doctors', methods=['GET'])
@doctor_required
def doctors():
    all_doctors = DoctorService().get_all_doctors()
    all_faculty_names = FacultyRepository().get_all_faculties_names()
    
    return render_template(
        'doctor/doctor_portal.html', 
        all_doctors=all_doctors, 
        all_faculty_names=all_faculty_names
    )

@doctor_bp.route('/doctors/examinations', methods=['GET'])
@doctor_required
def doctor_examinations():
    # Use current_user from Flask-Login session, not URL parameters
    username = current_user.username
    doctor_faculty_id = UserRepository().get_faculty_id_by_doctor_username(username)
    doctor_name = UserRepository().get_doctorname_by_username(username)
    doctor_faculty_name = FacultyRepository().get_faculty_name_by_id(doctor_faculty_id)
    doctor_id = UserRepository().get_doctor_id_by_username(username)
    
    examinations_data = DoctorPortalService().get_patients_examinations_of_doctor(doctor_id)
    
    return render_template(
        'doctor/doctor_portal.html', 
        doctor_name=doctor_name,
        doctor_id=doctor_id,
        active_tab='my-patients',
        examinations_data=examinations_data,
        total_patients=None,
        total_examinations=None,
        stable_patients_ratio=None,
        consultation_last_6_months=None,
        string_months=None,
        doctor_faculty_id=doctor_faculty_id,
        doctor_faculty_name=doctor_faculty_name,
    )
    
@doctor_bp.route('/doctors/performance', methods=['GET'])
@doctor_required
def doctor_performance():
    # Use current_user from Flask-Login session, not URL parameters
    username = current_user.username
    doctor_faculty_id = UserRepository().get_faculty_id_by_doctor_username(username)
    doctor_name = UserRepository().get_doctorname_by_username(username)
    doctor_faculty_name = FacultyRepository().get_faculty_name_by_id(doctor_faculty_id)
    doctor_id = UserRepository().get_doctor_id_by_username(username)
        
    service = DoctorPortalService()
    total_patients = service.get_total_patients_of_doctor(doctor_id)
    total_examinations = service.get_total_examinations_of_doctor(doctor_id)
    stable_patients_ratio = service.get_stable_patient_ratio_of_doctor(doctor_id)
    consultation_last_6_months, string_months = service.get_consultation_last_6_months(doctor_id)
    
    return render_template(
        'doctor/doctor_portal.html', 
        doctor_name=doctor_name,
        doctor_id=doctor_id,
        active_tab='performance',
        examinations_data=None,
        total_patients=total_patients,
        total_examinations=total_examinations,
        stable_patients_ratio=stable_patients_ratio,
        consultation_last_6_months=consultation_last_6_months,
        string_months=string_months,
        doctor_faculty_id=doctor_faculty_id,
        doctor_faculty_name=doctor_faculty_name,
    )
    
@doctor_bp.route('/doctors/add', methods=['POST'])
@doctor_required
def add_doctor():
    data = request.get_json()
    
    DoctorService().add_doctor(data)
    _, username, password = register_doctor()
    return {'success': True, 'message': f'Added new doctor successfully.', 'username': username, 'password': password}, 200