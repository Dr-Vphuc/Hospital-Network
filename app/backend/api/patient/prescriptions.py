from . import patient_bp, patient_required
from flask import jsonify, render_template
from flask_login import current_user
from backend.services.admin.examination_service import ExaminationService
from backend.repositories.user_repository import UserRepository

@patient_bp.route('/prescriptions', methods=['GET'])
@patient_required
def prescriptions():
    patient_id = current_user.ref_id  
    username = UserRepository().get_patientname_by_username(current_user.username)
    
    examination_service = ExaminationService()
    prescriptions = examination_service.get_all_prescriptions_with_patients(patient_id=patient_id)
    return render_template(
        'patient/prescription.html', 
        prescriptions=prescriptions,
        username=username
        )