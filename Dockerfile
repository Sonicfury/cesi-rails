FROM ruby:slim

WORKDIR /app

RUN apt-get update -qq \
    && apt-get install -y build-essential libpq-dev nodejs git
RUN gem install rails

ENTRYPOINT ["tail", "-f", "/dev/null"]
# ENTRYPOINT ["rails", "server", "-b", "0.0.0.0"]
