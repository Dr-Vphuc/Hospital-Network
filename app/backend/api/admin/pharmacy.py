from . import admin_bp, admin_required
from flask import render_template

@admin_bp.route('/pharmacy', methods=['GET'])
@admin_required
def pharmacy():
    return render_template('admin/pharmacy.html')