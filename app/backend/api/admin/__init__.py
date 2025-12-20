from flask import Blueprint
from functools import wraps
from flask_login import current_user
from flask import abort

admin_bp = Blueprint('admin', __name__, url_prefix='/admin')

def admin_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        if not current_user.is_authenticated:
            abort(401)
        if current_user.role != 'ADMIN':
            abort(403)
        return f(*args, **kwargs)
    return decorated

from . import overview, patients, doctors, pharmacy, prescriptions, room