# Dockerfile for book_catalog microservice
# FROM node:18.17.1

# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install --only=production
# COPY ./book_catalog ./book_catalog

# CMD npm start

FROM python:3.9
COPY ./book_catalog ./book_catalog
RUN pip install -r requirements.txt
CMD ["python", "./book_catalog/main.py"]
