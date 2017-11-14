FROM ubuntu:latest

MAINTAINER Lars Boegild Thomsen <lth@cow.dk>

#ADD     sources.list /etc/apt/
#ADD    preferences /etc/apt/

RUN     export DEBIAN_FRONTEND=noninteractive && \
        apt-get -y update && \
        apt-get -y dist-upgrade && \
        apt-get -y install less vim curl git sudo snapcraft && \
        apt-get -y clean

COPY	run.sh /

RUN	chmod +x ./run.sh

VOLUME  ["/home"]

ENTRYPOINT ["./run.sh"]

# vim: ts=4 et nowrap autoindent
