sudo apt-get install python3-pip
pip3 install --upgrade pip
pip3 install docker-compose


docker-compose build
# Run as daemon, in background
docker-compose up -d
docker-compose stop

# For testing run with --build
docker-compose up --build

# Set static files
docker exec django01 /bin/sh -c "python manage.py collectstatic --noinput"

# Required to be installed in python container to get psycopg2 working
apk add --no-cache postgresql-dev musl-dev gcc && pip3 install psycopg2