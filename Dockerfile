FROM ubuntu:18.04

MAINTAINER Chuanjian Wang <me@ckeyer.com>

env NPM_CONFIG_PREFIX=/.npm-global
env PATH=/.npm-global/bin:$PATH

RUN apt-get update -y ;\
	apt-get install -y nodejs npm make wget python

RUN npm update && \
	npm i npm@latest -g && \
	npm install -g vue-cli

ADD upx /usr/bin/upx

RUN cd /usr/localwget && \
	http://gosspublic.alicdn.com/ossutil/1.6.9/ossutil64 && \
	chmod 755 ossutil64

WORKDIR /opt
