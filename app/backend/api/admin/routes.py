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