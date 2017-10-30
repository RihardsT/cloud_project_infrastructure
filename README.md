# Small cloud project
A small cloud project to practice different technologies.
The main purpose for all of this was to make my personal blog project.
To somewhat replicate how things might happen in a real life project,
I decided to complicate everything for myself and try all of these different things.

The various things I've thought of doing are listed in the To Do file.

- First of all, Docker, just because it's trendy and it's cool.
- Django - because it's written in Python and Python is cool.
- Nginx - because I heard it doesn't create a separate thread for each connection (but Apache does).
- PostgreSQL - because it's cooler than MySQL.
- Gunicorn - to serve the Django app. Because I found a good Docker/Gunicorn blog post for an easy setup (http://ruddra.com/2016/08/14/docker-django-nginx-postgres/).

In spite of my limited experience with Ruby on Rails, I wanted to explore Django,
but because of Rails I tried serving Django app with Passenger.
Got even as far as building Passenger Docker image for ARM,
but I'm dropping that approach in favour of Gunicorn.
One reason being that the images I created for Passenger where quite hefty.
Another reason being the aforementioned blog post.


# Submodule update
```
git submodule update --recursive --remote
```
