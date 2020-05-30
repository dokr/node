FROM ubuntu:18.04

MAINTAINER Chuanjian Wang <me@ckeyer.com>

env NPM_CONFIG_PREFIX=/.npm-global
env PATH=/.npm-global/bin:$PATH

RUN apt-get update -y ;\
	apt-get install -y nodejs npm make wget python git

RUN npm update && \
	npm i npm@latest -g && \
	npm install -g pm2 cnpm

WORKDIR /opt
