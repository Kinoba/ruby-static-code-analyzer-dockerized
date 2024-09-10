FROM ruby:3.3.5

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

WORKDIR /app

RUN groupadd -g 7777 rubyman \
  && useradd -m -s /bin/bash -u 7777 -g 7777 rubyman \
  && chown -R rubyman:rubyman /app

USER rubyman

COPY --chown=rubyman:rubyman Gemfile* /app/

RUN bundle update --bundler \
  && bundle config set deployment true \
  && bundle install --jobs 4 --retry 3