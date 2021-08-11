FROM python:3.8

RUN apt-get update

ARG WORKSPACE=/workspace
COPY . ${WORKSPACE}
WORKDIR ${WORKSPACE}

RUN pip3 install -r requirements.txt