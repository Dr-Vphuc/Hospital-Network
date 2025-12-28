from flask import render_template, jsonify
from backend import create_app
from backend.models.patient import Patient

app = create_app()

@app.route('/')
def root():
    return render_template("login.html")

    

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
