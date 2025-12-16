from flask import render_template, jsonify
from backend import create_app
from backend.models.patient import Patient

app = create_app()

@app.route('/')
def root():
    return render_template("index.html")

@app.route('/data')
def data():
    patients = Patient.query.all()
    print(len(patients))
    return jsonify([
        {
            "id": u.MABN,
            "name": u.hoten,
            "sdt": u.sdt
        }
        for u in patients
    ])
    

if __name__ == '__main__':
    app.run(debug=True)