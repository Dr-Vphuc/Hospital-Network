from . import admin_bp, admin_required
from flask import render_template
from backend.services.admin.overview_service import OverviewService

@admin_bp.route('/overview', methods=['GET'])
@admin_required
def overview():
    total_current_inpatients = OverviewService().get_total_current_inpatients()
    total_active_doctors = OverviewService().get_total_active_doctors()
    all_examinations_today = OverviewService().get_all_examinations_today()
    days_30_revenue = OverviewService().get_30days_revenue()
    total_patients_last_6_months, month_strings = OverviewService().get_total_patients_last_6_month()
    total_patients_per_faculty, faculty_names = OverviewService().get_total_patients_per_faculty()
    
    return render_template(
        'admin/overview.html',
        total_current_inpatients=total_current_inpatients, 
        total_active_doctors=total_active_doctors,
        all_examinations_today=all_examinations_today, 
        days_30_revenue=days_30_revenue,
        total_patients_last_6_months=total_patients_last_6_months, 
        month_strings=month_strings,
        total_patients_by_faculty=total_patients_per_faculty,
        faculty_names=faculty_names
        )

