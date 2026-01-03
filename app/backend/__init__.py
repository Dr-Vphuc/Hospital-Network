from flask import Flask
from flask_login import LoginManager
from .db import db
import os
from dotenv import load_dotenv

# Load environment variables from .env
load_dotenv()

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

login_manager = LoginManager()
login_manager.login_view = 'auth.login'

def create_app():
    app = Flask(
        __name__,
        template_folder=os.path.join(BASE_DIR, '..', 'frontend', 'templates'),
        static_folder=os.path.join(BASE_DIR, '..', 'frontend', 'static'),
    )
<<<<<<< HEAD

     # Load config from environment variables
    app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')
    app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv('DATABASE_URI')
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    
=======
    DB_HOST = os.getenv("DB_HOST", "127.0.0.1")
    DB_PORT = os.getenv("DB_PORT", "3306")
    DB_NAME = os.getenv("DB_NAME", "hospital")
    DB_USER = os.getenv("DB_USER", "hospital_user")
    DB_PASS = os.getenv("DB_PASS", "hospital123")

    app.config["SQLALCHEMY_DATABASE_URI"] = (
    f"mysql+pymysql://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
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

>>>>>>> abfab7f3875538ce439d9ea7126fc9ec01f0be74
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

    # Init extensions
    db.init_app(app)
    login_manager.init_app(app)

    # Import user_loader after login_manager is initialized
    from .api.auth import loader

    return app
