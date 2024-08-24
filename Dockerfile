# Dockerfile for book_catalog microservice
FROM node:18.17.1

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY ./book_catalog ./book_catalog

CMD npm start
