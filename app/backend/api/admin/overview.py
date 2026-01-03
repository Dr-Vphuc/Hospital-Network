from . import admin_bp, admin_required
from flask import render_template
from backend.services.admin.overview_service import OverviewService

@admin_bp.route('/overview', methods=['GET'])
@admin_required
def overview():
    service = OverviewService()
    total_current_inpatients = service.get_total_current_inpatients()
    total_active_doctors = service.get_total_active_doctors()
    all_examinations_today = service.get_all_examinations_today()
    days_30_revenue = service.get_30days_revenue()
    total_patients_last_6_months, month_strings = service.get_total_patients_last_6_month()
    total_patients_per_faculty, faculty_names = service.get_total_patients_per_faculty()
    total_patient_per_faculties, total_examinations_per_faculties, faculty_names_2 = service.get_total_patient_per_faculties()
    
    return render_template(
        'admin/overview.html',
        total_current_inpatients=total_current_inpatients, 
        total_active_doctors=total_active_doctors,
        all_examinations_today=all_examinations_today, 
        days_30_revenue=days_30_revenue,
        total_patients_last_6_months=total_patients_last_6_months, 
        month_strings=month_strings,
        total_patients_by_faculty=total_patients_per_faculty,
        faculty_names=faculty_names,
        total_patient_per_faculties=total_patient_per_faculties,
        total_examinations_per_faculties=total_examinations_per_faculties,
        faculty_names_2=faculty_names_2
        )

