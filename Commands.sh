sudo mkdir /var/docker/ # To use for various docker volumes
sudo mkdir /srv/blog
sudo chown -R blogadmin:blogadmin /srv/blog
git clone ## clone this repo
cd ## cd where needed: DockerGunicornARM
git submodule init
git submodule update
docker login # login to your docker contianter registry

apt-get install python3-pip
pip3 install --upgrade pip
pip3 install --upgrade docker-compose
docker-compose up -d

# Get static files
docker exec django01 /bin/sh -c "python manage.py collectstatic --noinput"
# Create django superuser
docker exec -ti django01 /bin/sh -c "python manage.py createsuperuser"
