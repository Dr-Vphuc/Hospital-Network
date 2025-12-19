from . import admin_bp, admin_required
from flask import render_template, request
from backend.services.admin.pharmacy_service import PharmacyService

@admin_bp.route('/pharmacy', methods=['GET'])
@admin_required
def pharmacy():
    inventory_status_table = PharmacyService().get_inventory_status_table()
    total_price = PharmacyService().get_total_price()
    
    return render_template(
        'admin/pharmacy.html', 
        inventory_status_table=inventory_status_table,
        total_price=total_price
    )
    
@admin_bp.route('/add-medicine-batch', methods=['POST'])
@admin_required
def add_medicine_batch():
    data = request.get_json()
    
    PharmacyService().add_medicine_batch(data)
    return {'success': True, 'message': f'Added new medicine batches successfully.'}, 200