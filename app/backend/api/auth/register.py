from werkzeug.security import generate_password_hash
from . import register_bp

@register_bp.route('/register', methods=['POST'])
def register_user():
    return "User Registration Endpoint"
