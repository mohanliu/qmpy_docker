FROM debian:latest

MAINTAINER mohanliu

RUN apt-get update
RUN apt-get install -y git vim

COPY bashrc /root/test.id
