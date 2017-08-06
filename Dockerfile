FROM ubuntu:latest
MAINTAINER jrjang@gmail.com

ENV ICECC_ENABLE_SCHEDULER=0

USER root

COPY scripts/build.sh /tmp/build.sh
COPY scripts/icecc-run.sh /usr/local/bin/icecc-run.sh

RUN apt-get -y update && \
  apt-get -y install build-essential autoconf git libtool libcap-ng-dev liblzo2-dev

RUN /tmp/build.sh
RUN groupadd icecc && \
  useradd -d /var/cache/icecc -m -g icecc -s /bin/false icecc

USER icecc

EXPOSE 10245 8765/TCP 8765/UDP 8766

ENTRYPOINT ["/usr/local/bin/icecc-run.sh"]
