from flask import Flask
from .db import db
from .api.admin import admin_bp
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

def create_app():
    app = Flask(
        __name__,
        template_folder=os.path.join(BASE_DIR, '..', 'frontend', 'templates'),
        static_folder=os.path.join(BASE_DIR, '..', 'frontend', 'static'),
    )
    app.config['SQLALCHEMY_DATABASE_URI'] = \
    'mysql+pymysql://root:@localhost:3306/hospital'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    
    app.register_blueprint(admin_bp)

    db.init_app(app)
    
    
    return app

