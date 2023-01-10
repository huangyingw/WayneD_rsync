FROM ubuntu:18.04

# Make sudo dummy replacement, so we don't weaken docker security
RUN echo "#!/bin/bash\n\$@" > /usr/bin/sudo
RUN chmod +x /usr/bin/sudo
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root/rsync

COPY ./*.sh /root/rsync/

RUN /root/rsync/install_prerequisite.sh
# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
