FROM ruby:2.6-alpine

ENV BUILD_DEPS="curl" \
    DEV_DEPS="build-base postgresql-dev tzdata"

RUN apk add --update --upgrade $BUILD_DEPS $DEV_DEPS
RUN gem cleanup
RUN rm -rf /usr/lib/ruby/gems/*/cache/* \
          /var/cache/apk/* \
          /tmp/* \
          /var/tmp/*
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle config git.allow_insecure true

ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=1

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle check || bundle install -j 4

ADD . /app
RUN rm -rf /app/.git /app/tmp/*
RUN bundle check || bundle install -j 4

EXPOSE 9292

CMD ["bin/app/puma"]
