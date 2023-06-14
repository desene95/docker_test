FROM python:3.8

WORKDIR /docker-test #working directory or starting point

COPY requirements.txt .

RUN pip install -r requirements.txt
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
COPY ./app ./app

CMD ["python", "./app/my_app.py"]