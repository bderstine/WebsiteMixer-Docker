#!/bin/bash

DOCKERFILE=Dockerfile
PORTMAP_FILE=ports.map
IPADDRESS='0.0.0.0'

echo "# auto-generated Dockerfile" > $DOCKERFILE
echo "FROM ubuntu:16.04" >> $DOCKERFILE

echo "MAINTAINER bderstine" >> $DOCKERFILE

# install software
echo "RUN apt-get update" >> $DOCKERFILE
echo "RUN apt-get install -y wget unzip python python-pip python-requests python-twisted" >> $DOCKERFILE
echo "RUN apt-get clean" >> $DOCKERFILE
echo "RUN pip install pipreqs" >> $DOCKERFILE

echo "RUN cd /srv && wget https://github.com/bderstine/WebsiteMixer-App-Base/archive/master.zip" >> $DOCKERFILE
echo "RUN cd /srv && unzip master.zip" >> $DOCKERFILE
#echo "RUN cd /srv && mv ipt-kit-master ipt-kit" >> $DOCKERFILE
echo "RUN cd /srv && rm master.zip" >> $DOCKERFILE

