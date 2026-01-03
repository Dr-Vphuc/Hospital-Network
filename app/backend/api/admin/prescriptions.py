from . import admin_bp, admin_required
from flask import render_template, jsonify
from backend.services.admin.examination_service import ExaminationService

@admin_bp.route('/prescriptions', methods=['GET'])
@admin_required
def prescriptions():
    examination_service = ExaminationService()
    prescriptions = examination_service.get_all_prescriptions_with_patients()
    monitoring_data = []  
    
    return render_template(
        'admin/prescriptions.html', 
        prescriptions=prescriptions,
        monitoring_data=monitoring_data
    )
    
@admin_bp.route('/prescriptions/<string:patient_id>', methods=['GET'])
@admin_required
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
    
    