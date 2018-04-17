FROM ruby:2.5.0

RUN apt-get update -qq && \
    apt-get install -y nodejs rbenv ruby-dev ruby-build mysql-client --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
RUN gem install bundler

WORKDIR /tmp

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

RUN bundle install

RUN mkdir myapp
WORKDIR /myapp

ADD . /myapp
