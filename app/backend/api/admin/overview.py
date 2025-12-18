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
    return render_template(
        'admin/overview.html',
        total_current_inpatients=total_current_inpatients, 
        total_active_doctors=total_active_doctors,
        all_examinations_today=all_examinations_today, 
        days_30_revenue=days_30_revenue
        )

