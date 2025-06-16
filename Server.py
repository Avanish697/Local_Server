import os
from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def home():
    return "👋 Home route working"

@app.route('/callback')
def callback():
    code = request.args.get('code')
    realm_id = request.args.get('realmId')
    return f"""
    <h2>✅ Callback Success</h2>
    <p>Code: {code}</p>
    <p>Realm ID: {realm_id}</p>
    """

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 10000))
    app.run(host='0.0.0.0', port=port)
