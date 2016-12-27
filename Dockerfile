#
# Dockerfile for Backupninja + Borgbackup + Dockergen
#
# Instructions:
#
# docker build -t sismics/borgbackupgen .
# docker volume create --name borgbackupgen_etc
# docker run -d -h borgbackupgen --name borgbackupgen --restart=always \
#     -v borgbackupgen_etc:/etc/backup.d \
#     -v /var/run/docker.sock:/var/run/docker.sock \
#     sismics/borgbackupgen:1.0.0

FROM debian:jessie
MAINTAINER Jean-Marc Tremeaux <jm.tremeaux@sismics.com>

# Run Debian in non interactive mode
ENV DEBIAN_FRONTEND noninteractive

# Install Debian base
RUN apt-get update && apt-get -y -q install vim less procps curl

# Install Dockergen
ENV DOCKERGEN_VERSION 0.7.3
RUN curl -L "https://www.github.com/jwilder/docker-gen/releases/download/${DOCKERGEN_VERSION}/docker-gen-linux-amd64-${DOCKERGEN_VERSION}.tar.gz" | \
  tar --directory=/usr/local/bin -x -z
COPY opt /opt
COPY etc /etc

CMD ["/opt/bin/entrypoint.sh"]
