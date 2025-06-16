from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return '✅ Flask server is accessible via IP!'

if __name__ == '__main__':
    # Listen on ALL network interfaces
    app.run(host='0.0.0.0', port=5000)
