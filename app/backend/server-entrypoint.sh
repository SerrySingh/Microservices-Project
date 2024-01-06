#!/bin/bash

#apt update 
#apt install curl -y
# Apply database migrations
python3  manage.py migrate

# Run collectstatic to gather static files
python3 manage.py collectstatic --noinput

# Start Gunicorn to serve the Django application
gunicorn backend.wsgi --bind 0.0.0.0:8000 --workers 4 --threads 4


