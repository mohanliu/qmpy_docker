FROM debian:latest

MAINTAINER mohanliu <mohan@u.northwestern.edu>

RUN apt-get update
RUN apt-get install -y git vim wget bzip2

COPY .bashrc /root/.bashrc
COPY .vimrc /root/.vimrc
COPY requirements.txt /root/requirements.txt

WORKDIR /root
RUN wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh
RUN chmod +x miniconda.sh
RUN ./miniconda.sh -b
RUN /root/miniconda2/bin/conda update --yes conda
RUN /root/miniconda2/bin/conda create -n oqmd -y

RUN apt-get install build-essential default-libmysqlclient-dev 
RUN apt-get install build-essential python-dev
RUN apt install libgl1-mesa-glx
