FROM ubuntu:latest

MAINTAINER Sara ElZayat "st.elzayat@gmail.com"

RUN apt-get update -y && \
  apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y python3 mariadb-server

RUN apt-get install -y python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY testApp.py /

EXPOSE 5000

ENTRYPOINT ["/usr/local/bin/gunicorn", "-b", ":5000", "testApp:app"]
