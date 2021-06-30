ARG NODE_VERSION=12.13.0

FROM node:$NODE_VERSION-alpine

ENV PACKAGES="openssh g++ make python python3 git py3-pip"

WORKDIR /workdir

RUN apk add --update $PACKAGES

RUN npm i -g cross-env
