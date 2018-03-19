FROM python:3
ENV PYTHONUNBUFFERED 1

WORKDIR /code
ADD requirements.txt /code/
ADD manage.py /code/
RUN pip install -r requirements.txt

CMD ["gunicorn myproject.wsgi -b 0.0.0.0:8000"]