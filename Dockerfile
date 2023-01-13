FROM python:3.8-slim
ENV PYTHONUNBUFFERED 1
RUN mkdir /ecombinator
WORKDIR /ecombinator


RUN apt-get update
RUN pip install --upgrade pip
RUN apt-get install -y default-libmysqlclient-dev
RUN apt-get install -y gcc musl-dev
COPY requirements.txt .
RUN pip install -r requirements.txt --timeout 600
COPY . /ecombinator