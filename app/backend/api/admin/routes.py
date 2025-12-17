from . import admin_bp
from functools import wraps
from flask import abort, redirect, url_for, render_template
from flask_login import current_user

def admin_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        if not current_user.is_authenticated:
            abort(401)
        if current_user.role != 'ADMIN':
            abort(403)
        return f(*args, **kwargs)
    return decorated

@admin_bp.route('/overview', methods=['GET'])
@admin_required
def overview():
    return render_template('admin/overview.html')

@admin_bp.route('/patients', methods=['GET'])
@admin_required
def patients():
    return render_template('admin/patients.html')

@admin_bp.route('/doctors', methods=['GET'])
@admin_required
def doctors():
    return render_template('admin/doctors.html')

@admin_bp.route('/medicines', methods=['GET'])
@admin_required
def medicines():
    return render_template('admin/medicines.html')

@admin_bp.route('/pharmacy', methods=['GET'])
@admin_required
def pharmacy():
    return render_template('admin/pharmacy.html')

@admin_bp.route('/prescriptions', methods=['GET'])
@admin_required
def prescriptions():
    return render_template('admin/prescriptions.html')