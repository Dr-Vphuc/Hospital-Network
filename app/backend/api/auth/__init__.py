from flask import Blueprint

register_bp = Blueprint('register', __name__, url_prefix='/auth')

from . import register