# Installation

    docker-compose run web django-admin.py startproject myproject .
    docker-compose run web django-admin.py startapp myapp

    docker-compose run web python3 manage.py migrate



# Notes

change command in docker-compose file to:

    exec gunicorn myapp.wsgi:application --bind 0.0.0.0:8000 --workers 3