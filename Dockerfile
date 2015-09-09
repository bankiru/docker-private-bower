FROM node:0.12

MAINTAINER Boris Gorbylev <ekho@ekho.name>

WORKDIR /private-bower
VOLUME /private-bower/storage

# Bower registry, git cache and svn cache ports
EXPOSE 5678 6789 7891

RUN git config --global url."https://github.com/".insteadOf "git://github.com/"
RUN git config --global user.email "private-bower@example.org"
RUN git config --global user.name "Private Bower"

ADD ./bower.sh /private-bower/bower.sh
ADD ./config.json /private-bower/config.json
ADD ./log4js.conf.json /private-bower/log4js.conf.json

RUN npm install -g private-bower && npm cache clear

CMD ["./bower.sh"]
