FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y python3
RUN apt install -y pkg-config python-is-python3
Run apt install -y git wget g++

RUN mkdir -p /home
RUN mkdir -p /out/Debug
RUN mkdir -p /out/Release

COPY compile.sh /home/compile.sh

CMD ["/home/compile.sh"]