FROM ruby:2.7-slim

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN apt update \
 && apt install -y curl build-essential libxml2-dev libxslt-dev libmariadbd-dev \
 && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
 && apt update \
 && apt install -y nodejs \
 && npm i -g yarn wait-port eslint \
 && bundle install

