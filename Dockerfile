FROM python:2.7-slim

MAINTAINER Paul Wellner Bou <paul@wellnerbou.de>

RUN apt-get update && apt-get install -y --no-install-recommends libxml2-dev libxslt1-dev libssl-dev gzip wget gcc zlib1g-dev
RUN mkdir /selftest
WORKDIR /selftest

RUN wget https://musicpartners.sonos.com/sites/default/files/PythonSelfTest.tar.gz
RUN tar xvzf PythonSelfTest.tar.gz
RUN pip install -r smapi/content_workflow/requirements.txt
RUN pip install psutil==2.2.1

WORKDIR /selftest/smapi/content_workflow

VOLUME /conf
