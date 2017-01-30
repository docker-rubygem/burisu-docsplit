FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.7.9

RUN gem install burisu-docsplit --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["docsplit"]
CMD ["--help"]
