FROM ruby:2.7-buster

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

ARG brakeman_version=4.10.1
ARG rubocop_version=1.8.1
ARG rubocop_rails_version=2.9.1
ARG rubocop_checkstyle_formatter_version=0.4.0
ARG rubocop_performance_version=1.7.1
ARG rubycritic_version=4.6.0

RUN useradd -ms /bin/bash rubyman \
  && gem install \
    brakeman:${brakeman_version} \
    rubocop:${rubocop_version} \
    rubocop-rails:${rubocop_rails_version} \
    rubocop-checkstyle_formatter:${rubocop_checkstyle_formatter_version} \
    rubocop-performance:${rubocop_performance_version} \
    rubycritic:${rubycritic_version}

USER rubyman

WORKDIR /app