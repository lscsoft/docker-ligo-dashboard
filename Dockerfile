FROM debian:wheezy

LABEL name="Environment for testing LIGO Dashboard configuration" \
      maintainer="Tom Downes <thomas.downes@ligo.org>" \
      date="20170702"

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends \
      nagios3 \
      nagios-nrpe-plugin && \
    rm -rf /var/lib/apt/lists/*
