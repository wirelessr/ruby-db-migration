FROM ricklin/ruby-db-migration

RUN apk add --update --no-cache nodejs-current yarn npm libxml2-utils \
    && npm i -g wait-port


