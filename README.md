# Small cloud project
Small cloud project, to practice different technologies.
Main purpose for all of this was to make personal blog project.
To somewhat replicate how things might happen in real life project,
I decided to complicate everything for myself and try all these different things.

The various things I've thought of doing are listed in the To Do file.

First of all, Docker, just because trendy and it's cool.
Django - because it's written in Python and Python is cool.
Nginx - because I heard it doesn't create separate thread for each connection (but Apache does)
PostgreSQL - because it's cooler than MySQL
Gunicorn - to serve Django app. Because found a good Docker/Gunicorn blog post for easy setup (http://ruddra.com/2016/08/14/docker-django-nginx-postgres/)

In spite of my small experience with Ruby on Rails, I wanted to explore Django,
but because of Rails, I tried serving Django app with Passenger.
Got even so far to build Passenger Docker image for ARM,
but I'm dropping that approach in favor of Gunicorn.
One reason being that the images I created for Passenger where quite hefty.
Another reason being the mentioned blog post.