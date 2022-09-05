# Flask webserver
# By Colby Reinhart
# 9-5-2022

from flask import Flask, render_template, send_from_directory
import os

app = Flask(__name__)

@app.route("/")
def homepage():
	return render_template("homepage.html")

@app.route("/favicon.ico")
def favicon():
	return send_from_directory(os.path.join(app.root_path, "static"), "favicon.ico", mimetype="image/vnd.microsoft.icon")

if __name__ == '__main__':
	app.run(debug=True)