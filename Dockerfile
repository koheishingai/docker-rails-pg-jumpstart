FROM nitrousio/ruby:latest
MAINTAINER Nitrous.IO <hello@nitrous.io>

RUN \
  apt-get update && \
  apt-get install -y postgresql-client libpq-dev

RUN \
  su action -l -c /bin/bash -c \
  'cd /home/action && \
  rails new app -d postgresql'

ADD files/database.yml /home/action/app/config/database.yml
RUN chown action:action /home/action/app/config/database.yml

ADD files/initonce/0020-move-app-to-volume.sh /nitrous/initonce/0020-move-app-to-volume.sh
