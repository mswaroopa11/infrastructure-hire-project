# app.py - a minimal flask api using flask_restful
from flask import Flask, Response
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

@app.route("/")
def hello():
    return Response("Hi from your Flask app running in your Docker container!")

if __name__ == "__main__":
    app.run("0.0.0.0", port=80, debug=True)