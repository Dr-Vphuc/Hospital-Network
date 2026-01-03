from flask import Flask
from flask_login import LoginManager
from .db import db
import os
from dotenv import load_dotenv

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# Load .env from project root: Hospital-Network/.env
load_dotenv(os.path.join(BASE_DIR, "..", "..", ".env"))

login_manager = LoginManager()
login_manager.login_view = "auth.login"


def create_app():
    app = Flask(
        __name__,
        template_folder=os.path.join(BASE_DIR, "..", "frontend", "templates"),
        static_folder=os.path.join(BASE_DIR, "..", "frontend", "static"),
    )

    # Secret key
    app.config["SECRET_KEY"] = os.getenv("SECRET_KEY", "dev-secret-key-change-me")

    # Database URI
    database_uri = os.getenv("DATABASE_URI")
    if not database_uri:
        DB_HOST = os.getenv("DB_HOST", "127.0.0.1")
        DB_PORT = os.getenv("DB_PORT", "3306")
        DB_NAME = os.getenv("DB_NAME", "hospital")
        DB_USER = os.getenv("DB_USER", "hospital_user")
        DB_PASS = os.getenv("DB_PASS", "hospital123")
        database_uri = f"mysql+pymysql://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}"

    app.config["SQLALCHEMY_DATABASE_URI"] = database_uri
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

    # Optional: remove ONLY_FULL_GROUP_BY for this session
    app.config["SQLALCHEMY_ENGINE_OPTIONS"] = {
        "connect_args": {
            "init_command": (
                "SET SESSION sql_mode=(SELECT REPLACE(@@SESSION.sql_mode,'ONLY_FULL_GROUP_BY',''))"
            )
        }
    }

    # ----- Register blueprints -----
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

    # ----- Init extensions -----
    db.init_app(app)
    login_manager.init_app(app)

    # Import user_loader after login_manager is initialized
    from .api.auth import loader  # noqa: F401

    return app
