FROM debian:bullseye-slim
ARG HDSENTINEL_VERSION="018c"
RUN \
  apt-get update && apt-get upgrade -y && \
  apt-get install -y gzip wget
RUN \
  wget -O - "https://www.hdsentinel.com/hdslin/hdsentinel-$HDSENTINEL_VERSION-x64.gz" | \
  gzip -dc > "/usr/sbin/hdsentinel" && \
  chmod +x "/usr/sbin/hdsentinel"
VOLUME /dev
ENTRYPOINT ["/usr/sbin/hdsentinel"]

