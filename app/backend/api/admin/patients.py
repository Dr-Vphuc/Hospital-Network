from . import admin_bp, admin_required
from flask import render_template, jsonify
import datetime
from decimal import Decimal
from backend.services.admin.patient_service import PatientService
from backend.services.admin.examination_service import ExaminationService

@admin_bp.route('/patients', methods=['GET'])
@admin_required
def patients():
    patients_details = PatientService().get_patient_details()
    print(len(patients_details))
    return render_template(
        'admin/patients.html',
        patients_details=patients_details)
    
@admin_bp.route('/patients/<patient_id>', methods=['GET'])
@admin_required
def patient_detail(patient_id):
    examination_history_raw = ExaminationService().get_examination_by_patient_id(patient_id)
    relatives_raw = PatientService().get_relatives_by_patient_id(patient_id)
    
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
    
    return jsonify(data)