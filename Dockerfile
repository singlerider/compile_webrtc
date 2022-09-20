FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y python3
RUN apt install -y pkg-config python-is-python3
Run apt install -y git ninja-build wget

RUN mkdir -p /home
RUN mkdir -p /out/Debug

COPY compile.sh /home/compile.sh

CMD ["/home/compile.sh"]