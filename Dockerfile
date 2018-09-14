FROM debian:stretch

LABEL name="Environment for testing LIGO Dashboard configuration" \
      maintainer="Tom Downes <thomas.downes@ligo.org>" \
      date="20180904"

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends \
      icinga \
      nagios-plugins \
      nagios-nrpe-plugin && \
    rm -rf /var/lib/apt/lists/*
