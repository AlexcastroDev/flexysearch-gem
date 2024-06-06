FROM ruby:3.3.1

WORKDIR /app

COPY . .

RUN bundle install

ENTRYPOINT ["sh", "test/setup/entrypoint.sh"]