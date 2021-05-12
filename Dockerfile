FROM ruby:2.6.3

RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

RUN apt-get update && apt-get install -y postgresql-client-9.5 w3m bc nodejs yarn && \
    rm -rf /var/lib/apt/lists/*
ENV APP_HOME /store
ENV RAILS_LOG_TO_STDOUT true
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ENV BUNDLE_PATH /store/.gems
ENV GEM_HOME /store/.gems
