from flask import Flask, render_template, request, redirect, url_for, session
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__, static_url_path='/static')

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:****@localhost/hey_taxi_dbs'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.secret_key = 'dbmsshivangkomal'  # Change this to a secure secret key
db = SQLAlchemy(app)
