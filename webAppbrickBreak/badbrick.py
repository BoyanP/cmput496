from flask import Flask, request, send_from_directory, send_file
import os

app = Flask(__name__)

@app.route("/")
def hello():
    return send_file("filesToServe/brickbreaker.html")
	
@app.route("/filesToServe/<path>")
def root_path(path):
    return send_file("filesToServe/"+path);

@app.route("/thissucks")
def suck():
	return  os.getcwd()


if __name__ == "__main__":
    app.run(debug=True)
