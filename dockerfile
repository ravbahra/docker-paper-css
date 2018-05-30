FROM ubuntu:16.04

RUN ["/bin/bash","-c","apt-get update"]
# create a directory for the web files to be loaded into
RUN ["/bin/bash","-c","mkdir /web"]
RUN ["/bin/bash","-c","apt-get install nodejs -y"]
RUN ["/bin/bash","-c","apt-get install npm -y"]
RUN ["/bin/bash","-c","npm install -g live-server"]

# RUN "apt-get update && mkdir /web && apt-get install nodejs -y && apt-get install npm -y && npm install -g live-server"

EXPOSE 80





