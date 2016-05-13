FROM ubuntu:16.04
MAINTAINER Martin Fenner mfenner@datacite.org

ENV PANDOC_VERSION 1.17.0.2

# Install required packages and install/updates certificates
RUN apt-get update && apt-get install -y \
    apt-utils \
    ca-certificates \
    nginx-full \
    npm \
    ruby \
    ruby-dev \
    wget \
  && rm -r /var/lib/apt/lists/*

# Install pandoc
RUN wget --no-verbose https://github.com/jgm/pandoc/releases/download/$PANDOC_VERSION/pandoc-$PANDOC_VERSION-1-amd64.deb \
  && dpkg -i pandoc-$PANDOC_VERSION-1-amd64.deb \
  && rm pandoc-$PANDOC_VERSION-1-amd64.deb

# Install npm modules
#RUN cd $HOME/git/Documents/blog/_frontend && npm install

RUN mkdir /var/www/blog
VOLUME /var/www/blog

CMD ruby -v
