# Dockerfile for book_catalog microservice
# FROM node:18.17.1

# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install --only=production
# RUN pip install -r requirements.txt
# COPY ./book_catalog ./book_catalog

# CMD npm start
# CMD gunicorn myapp:app
FROM python:3.9
ADD ./book_catalog/main.py .
RUN pip install -r requirements.txt
CMD ["python", "./book_catalog/main.py"]
