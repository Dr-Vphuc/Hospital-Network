from . import admin_bp, admin_required
from flask import render_template
from backend.services.admin.patient_service import PatientService

@admin_bp.route('/patients', methods=['GET'])
@admin_required
def patients():
    patients_details = PatientService().get_patient_details()
    print(len(patients_details))
    return render_template(
        'admin/patients.html',
        patients_details=patients_details)