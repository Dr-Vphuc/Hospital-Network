from . import doctor_bp, doctor_required
from flask import render_template, jsonify, request
from flask_login import current_user
from backend.services.admin.examination_service import ExaminationService
from backend.repositories.faculty_repository import FacultyRepository
from backend.repositories.user_repository import UserRepository


@doctor_bp.route('/prescriptions', methods=['GET'])
@doctor_required
def prescriptions():
    # Use current_user from Flask-Login session, not URL parameters
    username = current_user.username
    doctor_faculty_id = UserRepository().get_faculty_id_by_doctor_username(username)
    doctor_name = UserRepository().get_doctorname_by_username(username)
    doctor_faculty_name = FacultyRepository().get_faculty_name_by_id(doctor_faculty_id)
        
    examination_service = ExaminationService()
    prescriptions = examination_service.get_all_prescriptions_with_patients(doctor_faculty_id)
    monitoring_data = []  
    
    return render_template(
        'doctor/prescriptions.html', 
        prescriptions=prescriptions,
        monitoring_data=monitoring_data,
        doctor_name=doctor_name,
        username=username,
        doctor_faculty_id=doctor_faculty_id,
        doctor_faculty_name=doctor_faculty_name
    )
    
@doctor_bp.route('/prescriptions/<string:patient_id>', methods=['GET'])
@doctor_required
def patient_monitoring(patient_id):
    examination_service = ExaminationService()
    monitoring_data = examination_service.get_examination_by_patient_id(patient_id)
    
    # Convert datetime objects to strings for JSON serialization
    for record in monitoring_data:
        if 'ngaykham' in record and record['ngaykham']:
            record['date'] = record['ngaykham'].strftime('%Y-%m-%d')
        if 'tinhtrang' in record:
            record['status'] = record['tinhtrang']
        if 'medicine_name' in record:
            record['medicine'] = record['medicine_name']
        # 'doctor' is already in the correct format
    
    return jsonify({'monitoring_data': monitoring_data})
    
    