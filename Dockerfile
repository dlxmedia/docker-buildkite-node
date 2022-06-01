ARG NODE_VERSION=12.13.0
ARG PACKAGES="openssh g++ make python3 git py3-pip"

FROM node:$NODE_VERSION-alpine

ENV PACKAGES=$PACKAGES

WORKDIR /workdir

RUN apk add --update --no-cache $PACKAGES; \
    ln -sf python3 /usr/bin/python; \
    python -m ensurepip; \
    pip3 install --no-cache --upgrade pip setuptools

RUN npm i -g cross-env
