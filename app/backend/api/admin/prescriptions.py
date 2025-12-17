from . import admin_bp, admin_required
from flask import render_template

@admin_bp.route('/prescriptions', methods=['GET'])
@admin_required
def prescriptions():
    return render_template('admin/prescriptions.html')