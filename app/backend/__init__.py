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

     # Load config from environment variables
    app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')
    app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv('DATABASE_URI')
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    
    from .api.admin import admin_bp
    app.register_blueprint(admin_bp)

    from .api.auth.routes import auth_bp
    app.register_blueprint(auth_bp)

    from .api.user.routes import user_bp
    app.register_blueprint(user_bp)

    # Init extensions
    db.init_app(app)
    login_manager.init_app(app)
    
    # Import user_loader after login_manager is initialized
    from .api.auth import loader
    
    return app

