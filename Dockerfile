FROM node:latest

MAINTAINER Boris Gorbylev <ekho@ekho.name>

WORKDIR /private-bower
VOLUME /private-bower/storage

# Bower registry, git cache and svn cache ports
EXPOSE 5678 6789 7891

ADD ./bower.sh /private-bower/bower.sh
ADD ./config.json /private-bower/config.json
ADD ./log4js.conf.json /private-bower/log4js.conf.json

RUN git config --global url."https://github.com/".insteadOf "git://github.com/" \
 && git config --global user.email "private-bower@example.org" \
 && git config --global user.name "Private Bower" \
 && npm install -g private-bower && npm cache clear

CMD ["./bower.sh"]
