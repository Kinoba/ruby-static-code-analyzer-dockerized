FROM ruby:3.2.2

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

WORKDIR /app

RUN useradd -ms /bin/bash rubyman

USER rubyman

COPY --chown=rubyman:rubyman Gemfile* /app/

RUN bundle install