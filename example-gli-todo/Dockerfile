FROM ruby:2.1

COPY ./ruby-cli-app /app
RUN cd /app \
 && bundle install

ENTRYPOINT ["ruby-cli-app"]
