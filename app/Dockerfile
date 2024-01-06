FROM python:3.8.18

# Set the working directory to /app
WORKDIR /home

COPY ./ /home 

RUN apt-get update

env DEBUG="True"
env CELERY_BROKER_URL="redis://rediscontainer:6379"
env CELERY_RESULT_BACKEND="redis://rediscontainer:6379/0"
env DJANGO_DB="postgresql"
env POSTGRES_HOST="postgrescontainer"
env POSTGRES_NAME="db"
env POSTGRES_USER="postgres"
env POSTGRES_PASSWORD="postgres"
env POSTGRES_PORT="5432"


# Install system dependencies
RUN pip install --upgrade pip

# Install Python dependencies
RUN pip3 install -r requirements.txt

RUN pip3 install gunicorn

EXPOSE 8000

RUN chmod +x /home/backend/server-entrypoint.sh 
CMD ["./backend/server-entrypoint.sh"]
