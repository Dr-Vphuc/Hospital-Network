from . import admin_bp, admin_required
from flask import render_template

@admin_bp.route('/doctors', methods=['GET'])
@admin_required
def doctors():
    return render_template('admin/doctors.html')