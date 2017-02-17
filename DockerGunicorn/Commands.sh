docker-compose build
# Run as daemon, in background
docker-compose up -d
docker-compose stop

# For testing run with --build
docker-compose up --build

# Set static files
docker exec django01 /bin/sh -c "python manage.py collectstatic --noinput"