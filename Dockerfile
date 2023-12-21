FROM alpine:3.13
ARG HDSENTINEL_VERSION="019b"
RUN \
  apk add --no-cache ca-certificates && \
  \
  wget -qO "/etc/apk/keys/sgerrand.rsa.pub" "https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub" && \
  wget -O "/tmp/glibc.apk" "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk" && \
  apk add "/tmp/glibc.apk" && rm "/tmp/glibc.apk" && \
  \
  wget -O - "https://www.hdsentinel.com/hdslin/hdsentinel-$HDSENTINEL_VERSION-x64.gz" | \
  gzip -dc > "/usr/sbin/hdsentinel" && \
  chmod +x "/usr/sbin/hdsentinel"
VOLUME /dev
ENTRYPOINT ["/usr/sbin/hdsentinel"]

