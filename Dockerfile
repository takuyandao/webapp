FROM ruby:2.4.5

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
    curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

WORKDIR /webapp
COPY Gemfile Gemfile.lock /webapp/
RUN bundle install
COPY . /webapp
RUN mkdir -p tmp/sockets