FROM --platform=linux/amd64 ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y pkg-config
RUN apt install -y python-is-python3
RUN apt install -y git
RUN apt install -y wget
RUN apt install -y pip

RUN mkdir -p /home
RUN mkdir -p /out/Debug
RUN mkdir -p /out/Release

COPY compile.sh /home/compile.sh

CMD ["/home/compile.sh"]
