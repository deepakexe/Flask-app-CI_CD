FROM python:3.9-slim-buster
WORKDIR /FlaskApp
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP="application.py"
ENV PHOTOS_BUCKET="employee-photo-bucket-dp-01"
ENV DATABASE_HOST="database-2.cbats4ueybfd.us-east-1.rds.amazonaws.com"
ENV DATABASE_USER="admin"
ENV DATABASE_PASSWORD="admin123"
ENV DATABASE_DB_NAME="employees"
ENV PHOTOS_BUCKET="employee-photo-bucket-dp-01"
ENV AWS_DEFAULT_REGION="us-east-1"


CMD ["flask", "run", "--host", "0.0.0.0"]

