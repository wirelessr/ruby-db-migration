FROM ricklin/ruby-db-migration

RUN apk add --update --no-cache nodejs-current yarn npm \
    && npm i -g wait-port


