from flask import Flask, request

# route
from routes.index_route import index_route

app = Flask(__name__)


index_route(app)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)
