FROM python

RUN pip install gunicorn json-logging-py flask pymysql SQLAlchemy flask_sqlalchemy flask_login flask_bcrypt

COPY logging.conf /logging.conf
COPY gunicorn.conf /gunicorn.conf

COPY testApp.py /

EXPOSE 5000

ENTRYPOINT ["/usr/local/bin/gunicorn", "--config", "/gunicorn.conf", "--log-config", "/logging.conf", "-b", ":5000", "testApp:app"]

