FROM ruby:3.2

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Gemfile stored at root — never overwritten by the volume mount at /usr/src/app
RUN printf 'source "https://rubygems.org"\n\
gem "jekyll", "4.3.3"\n\
gem "jekyll-feed"\n\
gem "jekyll-sitemap"\n\
gem "jekyll-redirect-from"\n\
gem "jekyll-gist"\n\
gem "jekyll-paginate"\n\
gem "webrick"\n\
gem "kramdown-parser-gfm"\n' > /Gemfile.jekyll

RUN BUNDLE_GEMFILE=/Gemfile.jekyll bundle install

WORKDIR /usr/src/app
EXPOSE 4000

ENV BUNDLE_GEMFILE=/Gemfile.jekyll

CMD ["bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "--watch", "--config", "_config.yml,_config_docker.yml"]
