FROM ubuntu
RUN \
  apt-get update -y
RUN \
  apt-get install -y \
    git \
    cron \
    python \
    python-boto \
    python-iso8601 \
    python-sqlalchemy
RUN \
  git clone https://github.com/basak/glacier-cli
WORKDIR glacier-cli
RUN \
  ln -s $PWD/glacier.py /usr/local/bin/glacier

ENV AWS_ACCESS_KEY_ID REQUIRED
ENV AWS_SECRET_ACCESS_KEY REQUIRED
