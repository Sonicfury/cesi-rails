FROM ruby:alpine3.17

RUN mkdir -p /var/www/api
WORKDIR /var/www/api

RUN apk update \
    && apk upgrade \
    && apk add build-base vim curl \
    && gem install rails

EXPOSE 3000

ENTRYPOINT ["rails", "server", "-b", "0.0.0.0"]
