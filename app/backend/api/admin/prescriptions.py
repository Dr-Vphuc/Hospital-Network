from . import admin_bp, admin_required
from flask import render_template
from backend.services.admin.prescription_service import PrescriptionService

@admin_bp.route('/prescriptions', methods=['GET'])
@admin_required
def prescriptions():
    prescription_service = PrescriptionService()
    prescriptions = prescription_service.get_all_prescriptions_with_patients()
    print(prescriptions)
    return render_template(
        'admin/prescriptions.html', 
        prescriptions=prescriptions)