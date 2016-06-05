FROM phusion/passenger-full:0.9.18
MAINTAINER Martin Fenner "mfenner@datacite.org"

# Set correct environment variables.
ENV HOME /home/app

# Set env defaults, can be overriden
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV RACK_ENV development

# Use baseimage-docker's init process.
# CMD ["/sbin/my_init"]

# Update installed APT packages
RUN apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold"

# Install pandoc
ENV PANDOC_VERSION 1.17.0.2
RUN apt-get install -y wget && \
    wget --no-verbose https://github.com/jgm/pandoc/releases/download/$PANDOC_VERSION/pandoc-$PANDOC_VERSION-1-amd64.deb && \
    dpkg -i pandoc-$PANDOC_VERSION-1-amd64.deb && \
    rm pandoc-$PANDOC_VERSION-1-amd64.deb

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Prepare app folder
RUN mkdir /home/app/webapp
ADD . /home/app/webapp
RUN chown -R app:app /home/app/webapp && \
    chmod -R 755 /home/app/webapp

# Install Ruby gems via bundler, run as app user
WORKDIR /home/app/webapp
RUN gem install bundler && \
    sudo -u app bundle install --path vendor/bundle --without development

CMD ["bundle", "exec", "jekyll", "serve", "--incremental"]

# Expose web
EXPOSE 8030
