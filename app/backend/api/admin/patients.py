from . import admin_bp, admin_required
from flask import render_template

@admin_bp.route('/patients', methods=['GET'])
@admin_required
def patients():
    return render_template('admin/patients.html')