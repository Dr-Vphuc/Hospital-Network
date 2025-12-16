from flask import render_template
from app.backend import create_app

app = create_app()

@app.route('/')
def root():
    return render_template("index.html")

if __name__ == '__main__':
    app.run(debug=True)