FROM python:3.8

WORKDIR /docker-test #working directory or starting point

COPY requirements.txt .

RUN pip install -r requirements.txt
COPY ./app ./app

CMD ["python", "./app/my_app.py"]