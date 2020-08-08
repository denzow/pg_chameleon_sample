FROM python:3.7-slim

RUN apt-get update
RUN apt-get -y install \
                mariadb-client \
                libmariadbclient-dev \
                libpq-dev \
                build-essential



WORKDIR /app

ADD docker/chameleon /app
RUN pip install poetry

ENTRYPOINT ["/app/docker/chameleon/entrypoint.sh"]
