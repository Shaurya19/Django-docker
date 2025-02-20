FROM python:3.8-slim-buster

WORKDIR /app

RUN apt-get update
RUN apt-get -y install gcc

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]

