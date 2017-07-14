FROM node:6.9.5
MAINTAINER Carlos hoffmann <choffmanne@gmail.com>

ADD package.json /tmp/package.json
RUN cd /tmp && npm install -s

ADD . /usr/src/app
#RUN ln -s /tmp/node_modules /usr/src/app/
WORKDIR /usr/src/app

EXPOSE 10010

CMD node app.js

