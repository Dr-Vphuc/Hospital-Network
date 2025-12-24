from flask import Blueprint
from functools import wraps
from flask_login import current_user
from flask import abort

patient_bp = Blueprint('patient', __name__, url_prefix='/patient')

def patient_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        if not current_user.is_authenticated:
            abort(401)
        if current_user.role != 'BENHNHAN':
            abort(403)
        return f(*args, **kwargs)
    return decorated

from . import prescriptions, profile