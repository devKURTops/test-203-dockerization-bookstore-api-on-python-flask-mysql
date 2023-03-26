FROM python:3.7-alpine
# ENV FLASK_APP=bookstore-api.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN pip install -r requirements.txt
WORKDIR /test
EXPOSE 80
COPY . .
CMD ["flask", "run"]
