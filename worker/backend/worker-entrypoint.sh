#!/bin/sh

# Apply database migrations
python3  manage.py migrate
# run a worker :)
celery -A backend worker --loglevel=info --concurrency 1 -E
