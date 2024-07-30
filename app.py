from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
cors = CORS(app, resources={r"/api/*": {"origins": "*"}})

@app.route('/joke', methods=['GET']) 
def get_joke():
    return "Why did the tomato turn red? Because it saw the salad dressing!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=6000, debug=True)