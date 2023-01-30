FROM ruby:slim

WORKDIR /app
COPY Gemfile .

RUN apt-get update -qq \
    && apt-get install -y build-essential libpq-dev nodejs git
RUN gem install rails bundle
RUN bundle install

ENTRYPOINT ["rails", "server", "-b", "0.0.0.0"]
