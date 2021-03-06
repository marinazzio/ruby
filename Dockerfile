FROM ruby:2.7.3
LABEL maintainer="denis.kiselyov@gmail.com"

RUN gem install --no-document bundler
RUN apt-get update -q && apt-get install -y locales && apt-get clean

RUN rm -rf /var/lib/apt/lists/*
RUN localedef -i ru_RU -c -f UTF-8 -A /usr/share/locale/locale.alias ru_RU.UTF-8
ENV LANG ru_RU.utf8
