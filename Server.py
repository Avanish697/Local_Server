import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return '✅ Flask server is accessible via Render!'

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 10000))  # default for local, uses Render's assigned port if deployed
    app.run(host='0.0.0.0', port=port)
