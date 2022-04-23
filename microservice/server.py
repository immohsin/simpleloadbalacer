import os

from flask import Flask


# Flask app
app = Flask(__name__)


@app.route("/hello-world")
def handle_request():
    return f"Hello world from {os.getpid()}", 200
