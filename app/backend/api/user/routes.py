from flask import Blueprint, render_template, request

user_bp = Blueprint('user', __name__, url_prefix='/user')

@user_bp.route('/login', methods=['GET'])
def login_page():
    registered = request.args.get('registered', '0')
    return render_template('login.html', registered=registered)