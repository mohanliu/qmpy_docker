FROM debian:latest

MAINTAINER mohanliu

RUN apt-get update
RUN apt-get install -y git vim wget bzip2

WORKDIR /root
RUN wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh
RUN chmod +x miniconda.sh
RUN ./miniconda.sh -b
RUN conda update --yes conda

COPY .bashrc /root/.bashrc
COPY .vimrc /root/.vimrc
