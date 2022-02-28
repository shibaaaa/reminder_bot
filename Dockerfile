# syntax=docker/dockerfile:1
FROM ruby:3.1.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /reminder_bot
COPY Gemfile /reminder_bot/Gemfile
COPY Gemfile.lock /reminder_bot/Gemfile.lock
RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]