# Dockerfile for book_catalog microservice
FROM python:3.9

WORKDIR /usr/src/app
COPY ./book_catalog ./book_catalog
RUN pip install -r ./book_catalog/requirements.txt
CMD ["uvicorn", "book_catalog.main:book_catalog", "--host", "0.0.0.0", "--port", "4000"]
