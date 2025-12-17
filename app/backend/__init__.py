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
    app.config['SQLALCHEMY_DATABASE_URI'] = \
    'mysql+pymysql://root:@localhost:3306/hospital'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    
    from .api.admin import admin_bp
    app.register_blueprint(admin_bp)
    from .api.auth.register import register_bp
    app.register_blueprint(register_bp)

    db.init_app(app)
    login_manager.init_app(app)
    
    # Import user_loader after login_manager is initialized
    from .api.auth import loader
    
    return app

