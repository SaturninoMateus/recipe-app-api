FROM python:3.7-alpine
MAINTAINER Saturn

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# creates a user to run the app only
RUN adduser -D user
USER user