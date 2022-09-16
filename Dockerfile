FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root/rsync

COPY ./*.sh /root/rsync/

RUN /root/rsync/install_prerequisite.sh
# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
