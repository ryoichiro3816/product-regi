FROM ruby:2.5
RUN apt-get update && apt-get install -y \
		build-essential \
		libpq-dev \
		nodejs \
		postgresql-client \
		yarn
WORKDIR /product-regi
COPY Gemfile Gemfile.lock /product-regi/
RUN bundle install