FROM ubuntu:16.04

RUN ["/bin/bash","-c","apt-get update"]
# create a directory for the web files to be loaded into
RUN ["/bin/bash","-c","mkdir /web"]
RUN ["/bin/bash","-c","apt-get install nodejs -y"]
RUN ["/bin/bash","-c","apt-get install npm -y"]
RUN ["/bin/bash","-c","npm install -g live-server"]


# nodejs is installed and not node, however the live-reload will
# use node and hence won't be able to find it

RUN ln -s /usr/bin/nodejs /usr/bin/node
# RUN "apt-get update && mkdir /web && apt-get install nodejs -y && apt-get install npm -y && npm install -g live-server"



EXPOSE 80





