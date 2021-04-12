ARG NODE_VERSION=12.13.0

FROM node:$NODE_VERSION-alpine

ENV BIN_BUILDER_PACKAGES="g++ make python python3 git"

WORKDIR /workdir

RUN apk add --update openssh $BIN_BUILDER_PACKAGES

RUN npm i -g cross-env

RUN apk del $BIN_BUILDER_PACKAGES

