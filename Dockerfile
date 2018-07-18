FROM debian:latest

MAINTAINER mohanliu

RUN apt-get update
RUN apt-get install -y git vim wget bzip2

COPY .bashrc /root/.bashrc
COPY .vimrc /root/.vimrc
