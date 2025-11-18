ARG RUBY_VERSION=3.2

FROM ruby:${RUBY_VERSION}

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TZ=UTC

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN gem install jekyll bundler

WORKDIR /jekyll

CMD ["bash"]
