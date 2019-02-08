FROM ubuntu:latest as base

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
        && apt-get install -y netcat-traditional \
        && apt-get install -y time \
        && apt-get install -y etcd-client \
        && apt-get install -y vim


RUN curl -L https://github.com/sharkdp/bat/releases/download/v0.10.0/bat-v0.10.0-x86_64-unknown-linux-gnu.tar.gz | \
        tar zxvf - --strip-components=1 -C /usr/local/bin/ bat-v0.10.0-x86_64-unknown-linux-gnu/bat


COPY ./cheatsheet.md /root/cheatsheet.md

COPY .bashrc /root/

CMD while true; do sleep 1; done;
