FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root/neovim

COPY ./*.sh /root/neovim/

RUN /root/neovim/install_prerequisite.sh
# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
