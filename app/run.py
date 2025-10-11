from app import create_app

app = create_app()

@app.route('/')
def root():
    return "<h1>We will get A+</h1>"

if __name__ == '__main__':
    app.run(debug=True)