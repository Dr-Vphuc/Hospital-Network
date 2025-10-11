from flask import Flask, request, render_template, url_for, redirect
from flask import blueprints

def create_app():
    app = Flask(__name__)

    return app

