from flask import Flask
from flask_login import LoginManager
from .db import db
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

login_manager = LoginManager()
login_manager.login_view = 'auth.login'

def create_app():
    app = Flask(
        __name__,
        template_folder=os.path.join(BASE_DIR, '..', 'frontend', 'templates'),
        static_folder=os.path.join(BASE_DIR, '..', 'frontend', 'static'),
    )

    app.config['SQLALCHEMY_DATABASE_URI'] = (
    "mysql+pymysql://hospital_user:hospital123@127.0.0.1:3306/hospital"
    )

    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    app.config['SECRET_KEY'] = '22092005271020052025'

    app.config["SQLALCHEMY_ENGINE_OPTIONS"] = {
	"connect_args": {
	    "init_command": "SET SESSION sql_mode=(SELECT REPLACE(@@SESSION.sql_mode,'ONLY_FULL_GROUP_BY',''))"
	}
    }

    from .api.admin import admin_bp
    app.register_blueprint(admin_bp)

    from .api.auth.routes import auth_bp
    app.register_blueprint(auth_bp)

    from .api.user.routes import user_bp
    app.register_blueprint(user_bp)

    from .api.doctor import doctor_bp
    app.register_blueprint(doctor_bp)

    from .api.patient import patient_bp
    app.register_blueprint(patient_bp)

    db.init_app(app)
    login_manager.init_app(app)

    # Import user_loader after login_manager is initialized
    from .api.auth import loader

    return app
