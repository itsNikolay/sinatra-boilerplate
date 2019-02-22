FROM ruby:2.6

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

CMD ["/app/bin/puma"]
