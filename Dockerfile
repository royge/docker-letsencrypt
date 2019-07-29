FROM ubuntu:bionic

MAINTAINER Roy Evangelista <royevangelista@gmail.com>

RUN apt-get update
RUN apt-get install -y python-minimal letsencrypt
