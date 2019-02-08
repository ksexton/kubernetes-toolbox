FROM ubuntu:latest

MAINTAINER Kyle Sexton <ks@mocker.org>

RUN apt-get update \
        && apt-get upgrade -y --no-install-recommends \
        && apt-get install curl ca-certificates -y --no-install-recommends \
        && apt-get autoremove -y \
        && apt-get clean

RUN apt-get install -y libcap2-bin \
        && apt-get install -y nfs-common \
        && apt-get install -y dnsutils \
        && apt-get install -y telnet \
        && apt-get install -y net-tools \
        && apt-get install -y netcat-traditional

CMD while true; do sleep 1; done;


