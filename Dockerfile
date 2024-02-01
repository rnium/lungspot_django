FROM python:3.10-slim-bullseye
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip setuptools &&\
    pip install -r requirements.txt
RUN pip install django-cors-headers
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 libglib2.0-0  -y

