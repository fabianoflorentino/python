FROM python:3.11-rc-alpine3.15

LABEL maintainer="Fabiano Santos Florentino"
LABEL description="A python image for the development of a application"
LABEL python version="3.11"
LABEL image version="v0.1"

COPY requirements.txt .

RUN apk --no-cache update \
    && apk --no-cache upgrade \
    && pip install --upgrade pip \
    && pip install -r requirements.txt --no-cache-dir \
    && rm -vrf /var/cache/apk/* \
    && adduser --disabled-password --gecos "" python

USER python

ENTRYPOINT [ "sh" ]