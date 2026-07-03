from flask import jsonify
from app.config import Config


def register_routes(app):

    @app.route("/")
    def home():
        return jsonify({
            "application": Config.APP_NAME,
            "version": Config.VERSION,
            "status": "Running"
        })

    @app.route("/health")
    def health():
        return jsonify({
            "status": "healthy"
        })

    @app.route("/version")
    def version():
        return jsonify({
            "version": Config.VERSION
        })