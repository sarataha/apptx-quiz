FROM ubuntu:latest

MAINTAINER Sara ElZayat "st.elzayat@gmail.com"

RUN apt-get update && \
  apt-get install -y python3 mariadb-server mariadb-client && \
  mysql_secure_installation

RUN apt-get install -y python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY testApp /

EXPOSE 8000

ENTRYPOINT ["/usr/local/bin/gunicorn", "-b", ":5000", "testApp:app"]
