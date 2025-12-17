from . import admin_bp, admin_required
from flask import render_template

@admin_bp.route('/medicines', methods=['GET'])
@admin_required
def medicines():
    return render_template('admin/medicines.html')