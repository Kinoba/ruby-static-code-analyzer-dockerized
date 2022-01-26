FROM ruby:2.7-bullseye

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

ARG brakeman_version=5.1.1
ARG danger_version=8.4.2
ARG rubycritic_version=4.6.1
ARG rubocop_version=1.22.1
ARG rubocop_rspec_version=2.5.0
ARG rubocop_rails_version=2.12.4
ARG rubocop_performance_version=1.11.5
ARG rubocop_checkstyle_formatter_version=0.5.0

RUN useradd -ms /bin/bash rubyman

USER rubyman

Run gem install \
    brakeman:${brakeman_version} \
    danger:${danger_version} \
    rubycritic:${rubycritic_version} \
    rubocop:${rubocop_version} \
    rubocop-rspec:${rubocop_rspec_version} \
    rubocop-rspec:${rubocop_rspec_version} \
    rubocop-rails:${rubocop_rails_version} \
    rubocop-performance:${rubocop_performance_version} \
    rubocop-checkstyle_formatter:${rubocop_checkstyle_formatter_version}

WORKDIR /app