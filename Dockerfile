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

# Prepare tmp folder for installation of Ruby gems and npm modules
RUN mkdir -p /home/app/tmp
COPY vendor /home/app/tmp/vendor
RUN chown -R app:app /home/app/tmp && \
    chmod -R 755 /home/app/tmp

# Install npm and bower packages
WORKDIR /home/app/tmp/vendor
RUN sudo -u app npm install && \
    npm install -g phantomjs-prebuilt

# Install Ruby gems
COPY Gemfile /home/app/tmp/Gemfile
COPY Gemfile.lock /home/app/tmp/Gemfile.lock
WORKDIR /home/app/tmp
RUN gem install bundler && \
    mkdir -p /home/app/tmp/vendor/bundle && \
    chown -R app:app /home/app/tmp/vendor/bundle && \
    chmod -R 755 /home/app/tmp/vendor/bundle && \
    sudo -u app bundle install --path vendor/bundle

# Copy webapp folder
ADD . /home/app/webapp
WORKDIR /home/app/webapp
RUN mkdir -p /home/app/webapp/tmp/pids && \
    chown -R app:app /home/app/webapp && \
    chmod -R 755 /home/app/webapp

# Run additional scripts during container startup (i.e. not at build time)
RUN mkdir -p /etc/my_init.d
COPY vendor/docker/70_install.sh /etc/my_init.d/70_install.sh


CMD ["bundle", "exec", "jekyll", "serve", "--incremental"]

# Expose web
EXPOSE 8030
