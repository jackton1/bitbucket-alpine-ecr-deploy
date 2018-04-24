FROM python:3.6-alpine

MAINTAINER Tonye Jack <jtonye@ymail.com>

ENV PYTHONUNBUFFERED 1

RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
            g++ \
            gcc \
            make \
            bash \
            zsh \
            ca-certificates \
            openssl \
            wget \
            openssh \
            curl \
            jq \
            git \
            nodejs \
            nodejs-npm \
            python3-dev \
    && update-ca-certificates 2>/dev/null || true \
    && curl https://bootstrap.pypa.io/get-pip.py | python3 \
    && pip3 install -U awscli
    && curl -OL https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh
    && bash gitflow-installer.sh
