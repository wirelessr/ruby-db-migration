FROM ruby:2.7-alpine3.14

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN apk add --update --no-cache build-base busybox-extras libxml2-dev libxslt-dev mariadb-dev \
                                nodejs-lts yarn npm libxml2-utils \
    && bundle install \
    && npm i -g wait-port eslint


