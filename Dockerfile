FROM ubuntu:16.04

MAINTAINER Che Wei Lin <linton.tw@gmail.com>

ENV HOME /root
WORKDIR /root

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    python-setuptools \
    python-pip \
    python-eventlet \
    python-lxml \
    python-msgpack \
 && rm -rf /var/lib/apt/lists/* \
 && curl -kL https://github.com/osrg/ryu/archive/master.tar.gz | tar -xvz \
 && mv ryu-master ryu \
 && cd ryu \
 && pip install -U pip \
 && pip install -r tools/pip-requires \
 && python setup.py install

 # Show ryu-manager version
 CMD ["ryu-manager", "--version"]
