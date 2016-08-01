FROM ruby:2.1
MAINTAINER Carlos Lopes <carlos.lopes@codeminer42.com>

# Install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      git \
      wget \
      libfreetype6 \
      libfontconfig \
      bzip2 \
      qt5-default \
      libqt5webkit5-dev \
      gstreamer1.0-plugins-base \
      gstreamer1.0-tools \
      gstreamer1.0-x

# Install Phantom.js
ENV PHANTOMJS_VERSION 1.9.8

RUN mkdir -p /srv/var && \
    wget -q --no-check-certificate \
      -O /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 \
      https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
    tar -xjf /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -C /tmp && \
    rm -f /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
    mv /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/ /srv/var/phantomjs && \
    ln -s /srv/var/phantomjs/bin/phantomjs /usr/bin/phantomjs

# Install node / npm
ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 4.4.7

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" && \
    tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 && \
    rm "node-v$NODE_VERSION-linux-x64.tar.xz" && \
    npm install npm -g
