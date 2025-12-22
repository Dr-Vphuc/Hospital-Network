from . import doctor_bp, doctor_required
from flask import render_template, jsonify, request
from flask_login import current_user
from decimal import Decimal
from backend.services.admin.patient_service import PatientService
from backend.services.admin.examination_service import ExaminationService
from backend.repositories.faculty_repository import FacultyRepository
from backend.repositories.user_repository import UserRepository
from backend.db import db

@doctor_bp.route('/patients', methods=['GET'])
@doctor_required
def patients():
    # Use current_user from Flask-Login session, not URL parameters
    username = current_user.username
    doctor_faculty_id = UserRepository().get_faculty_id_by_doctor_username(username)
    doctor_name = UserRepository().get_doctorname_by_username(username)
    doctor_faculty_name = FacultyRepository().get_faculty_name_by_id(doctor_faculty_id)
        
    patients_details = PatientService().get_patient_details(faculty_id=doctor_faculty_id)
    
    return render_template(
        'doctor/patients.html',
        patients_details=patients_details,
        doctor_name=doctor_name,
        doctor_faculty_id=doctor_faculty_id,
        doctor_faculty_name=doctor_faculty_name
        )
    
@doctor_bp.route('/patients/<patient_id>', methods=['GET'])
@doctor_required
def patient_detail(patient_id):
    examination_history_raw = ExaminationService().get_examination_by_patient_id(patient_id)
    relatives_raw = PatientService().get_relatives_by_patient_id(patient_id)
    
    data = json(examination_history_raw, relatives_raw)
    return jsonify(data)

def json(examination_history_raw, relatives_raw):
     # Serialize examination history
    examination_history = []
    for exam in examination_history_raw:
        # Check if exam is already a dict or an object
        if isinstance(exam, dict):
            examination_history.append({
                'ngaykham': exam.get('ngaykham').strftime('%Y-%m-%d') if exam.get('ngaykham') else None,
                'bacsi': exam.get('doctor'),
                'khoa': exam.get('faculty_name'),
                'thuoc': exam.get('medicine_name'),
                'tinhtrang': exam.get('tinhtrang')
            })
        else:
            examination_history.append({
                'ngaykham': exam.ngaykham.strftime('%Y-%m-%d') if hasattr(exam, 'ngaykham') and exam.ngaykham else None,
                'bacsi': exam.doctor if hasattr(exam, 'doctor') else None,
                'khoa': exam.faculty_name if hasattr(exam, 'faculty_name') else None,
                'thuoc': exam.medicine_name if hasattr(exam, 'medicine_name') else None,
                'tinhtrang': exam.tinhtrang if hasattr(exam, 'tinhtrang') else None
            })
    
    # Serialize relatives
    relatives = []
    for rel in relatives_raw:
        relatives.append({
            'hoten': rel.hoten,
            'quanhe': rel.quanhe,
            'sdt': rel.sdt,
            'diachi': rel.diachi,
            'nguoigiamho': False  # Default to False since field doesn't exist in model
        })
    
    data = {
        'examination_history': examination_history,
        'relatives': relatives
    }
    return data