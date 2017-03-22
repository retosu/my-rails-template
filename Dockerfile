FROM retosu/myrails:latest

WORKDIR /app/rails

ADD Gemfile .
ADD Gemfile.lock .

ENTRYPOINT [ \
  "prehook", \
    "ruby -v", \
  "prehook", \
    "bundle install -j3 --quiet --path vendor/bundle", "--"\
]
