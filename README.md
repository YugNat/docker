# YugNat's Dockerfile


This repository contains **Dockerfiles** of varius tests for [Docker](https://www.docker.io/) published to the public.


## Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


## Elogbana

is a dock with logstash, elasticsearch, nginx and kibana parsing all logs in your /data.

### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/dockerfile/ubuntu/) from public [Docker Registry](https://index.docker.io/): `docker pull dockerfile/ubuntu`


### Usage

    Put *.log in your /data
    docker run -it --rm -p 80:80 -p 9200:9200 -v /data:/data test/logstash
  After few seconds, open `http://localhost` to see the welcome page.
