# Dev

    docker-compose run app django-admin.py startproject myproject .
    docker-compose run app django-admin.py startapp myapp

    docker-compose run app python manage.py makemigrations
    docker-compose run app python manage.py migrate

    docker-compose up --build [-d]
    docker-compose down [-v]

Any SQL in ./data will be run on docker-compose up.
Dump current dabatase with:

    docker exec -ti [CONTAINER_ID] mysqldump -u root -proot sniffle_db > ./data/sniffle_db.sql


Collect static:

    docker exec [CONTAINER_ID] python manage.py collectstatic --noinput