sudo mkdir /srv/blog_app
sudo chown USER:USER /srv/blog_app
git clone ## clone this repo
cd ## cd where needed: DockerGunicornARM
docker login # login to your docker contianter registry
docker-compose up -d
