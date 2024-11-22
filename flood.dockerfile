FROM node:alpine
MAINTAINER Yohann Leon <yohann@leon.re>

RUN apk add --update mediainfo git python3 make build-base

RUN mkdir -p /usr/flood
WORKDIR /usr/flood

RUN npm install --global flood && npm cache verify

# flood server is on 3000
EXPOSE 3000

CMD [ "flood", "--host", "0.0.0.0" ]
