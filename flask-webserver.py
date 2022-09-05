# Flask webserver
# By Colby Reinhart
# 9-5-2022

from flask import Flask, render_template, send_from_directory
import os

app = Flask(__name__)

# Homepage
@app.route("/")
def homepage():
	return render_template("homepage.html")

# Favicon
@app.route("/favicon.ico")
def favicon():
	return send_from_directory(os.path.join(app.root_path, "static"), "favicon.ico", mimetype="image/vnd.microsoft.icon")

# About me
@app.route("/aboutme")
def aboutme():
	return render_template("aboutme.html")

# Projects
@app.route("/projects")
def projects():
	return render_template("projects.html")

# Experience
@app.route("/experience")
def experience():
	return render_template("experience.html")

if __name__ == '__main__':
	app.run(debug=True)