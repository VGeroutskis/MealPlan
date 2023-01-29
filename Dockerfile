FROM ruby:3.2

RUN apt-get update -yqq \
    && apt-get install -yqq --no-install-recommends \
    postgresql-client \
    nodejs \
    && apt-get -q clean \
    && rm -rf /var/lib/apt/lists

# Pre-install gems with native extensions
RUN gem install nokogiri -v "1.14.0"

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

CMD rails server -b 0.0.0.0 -P /tmp/puma.pid