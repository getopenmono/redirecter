FROM node:argon
MAINTAINER Jens Peter Secher <jp@openmono.com>
RUN mkdir -p /usr/src/redirecter
WORKDIR /usr/src/redirecter
COPY package.json /usr/src/redirecter/
RUN npm install
COPY . /usr/src/redirecter
EXPOSE 3001
CMD [ "npm", "start" ]
