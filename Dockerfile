# Dockerfile for book_catalog microservice
# FROM node:18.17.1

# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install --only=production
# COPY ./book_catalog ./book_catalog

# CMD npm start

FROM python:3.9

WORKDIR /usr/src/app
COPY ./book_catalog ./book_catalog
RUN pip install -r ./book_catalog/requirements.txt
CMD uvicorn main:app --host 0.0.0.0 --port $PORT
