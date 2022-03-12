# syntax=docker/dockerfile:1
FROM ruby:3.1.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /reminder_bot
