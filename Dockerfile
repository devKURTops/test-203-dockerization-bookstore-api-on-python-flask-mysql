FROM python:3.7-alpine
ENV FLASK_APP=bookstore-api.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /test
EXPOSE 80
COPY . .
CMD ["flask", "run"]
