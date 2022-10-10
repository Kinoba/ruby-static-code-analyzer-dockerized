FROM ruby:3.1.2

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

ARG brakeman_version=5.3.1
ARG danger_version=9.0.0
ARG rubycritic_version=4.7.0
ARG rubocop_version=1.36
ARG rubocop_rspec_version=2.13.2
ARG rubocop_rails_version=2.16.1
ARG rubocop_performance_version=1.15.0
ARG rubocop_checkstyle_formatter_version=0.6.0

RUN useradd -ms /bin/bash rubyman

USER rubyman

RUN gem install \
    brakeman:${brakeman_version} \
    danger:${danger_version} \
    rubycritic:${rubycritic_version} \
    rubocop:${rubocop_version} \
    rubocop-rspec:${rubocop_rspec_version} \
    rubocop-rails:${rubocop_rails_version} \
    rubocop-performance:${rubocop_performance_version} \
    rubocop-checkstyle_formatter:${rubocop_checkstyle_formatter_version}

WORKDIR /app