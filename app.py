from flask import Flask, jsonify

app = Flask(__name__)


# @app.route("/hello", methods=["GET"])
# def say_hello():
#     return jsonify({"msg": "Hello vinod"})

@app.route("/<name>", methods=["GET"])
def say_hello(name):
    return jsonify({"msg": f"Hello {name}"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
    # app.run(host="0.0.0.0", port=8080, debug=True)