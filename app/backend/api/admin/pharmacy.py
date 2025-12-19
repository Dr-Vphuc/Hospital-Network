from . import admin_bp, admin_required
from flask import render_template
from backend.services.admin.pharmacy_service import PharmacyService

@admin_bp.route('/pharmacy', methods=['GET'])
@admin_required
def pharmacy():
    inventory_status_table = PharmacyService().get_inventory_status_table()
    
    return render_template(
        'admin/pharmacy.html', 
        inventory_status_table=inventory_status_table)