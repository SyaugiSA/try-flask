from flask import Response


def index_route(app):
    @app.get('/')
    def getIndex():
        return {"a": "b"}, 201
