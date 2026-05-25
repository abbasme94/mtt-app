from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "مرحبا بك في لوحة الربيعي"

if __name__ == '__main__':
    app.run()
