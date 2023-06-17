"Central configuration"
import os

PHOTOS_BUCKET = "employee-photo-bucket-dp-01"
FLASK_SECRET = "something-random"

DATABASE_HOST = os.environ['DATABASE_HOST'] if 'DATABASE_HOST' in os.environ else "flaskweb"
DATABASE_USER = os.environ['DATABASE_USER'] if 'DATABASE_USER' in os.environ else "admin"
DATABASE_PASSWORD = os.environ['DATABASE_PASSWORD'] if 'DATABASE_PASSWORD' in os.environ else "admin123"
DATABASE_DB_NAME = os.environ['DATABASE_DB_NAME'] if 'DATABASE_DB_NAME' in os.environ else "employees"
