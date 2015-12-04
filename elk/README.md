# YugNat's Dockerfile


This repository contains **Dockerfiles** of varius tests for [Docker](https://www.docker.io/) published to the public.


## Dependencies

* [java:7-jre]
* [java:8-jre]
* [debian:jessie]

## ELK

is a compose with logstash, elasticsearch, and kibana parsing all logs in your /data.
You can use json ressources and init script to create a Shakespeare lucene and test it with Shakespeare's kibana dashboad.

### Installation

1. Install [Docker](https://www.docker.io/).

2. Install [Dockcer-compose](https://github.com/docker/compose).


### Usage

    Put *.log in your /data
    docker-compose up -d
    After few seconds, open `http://localhost` to see the welcome page.
