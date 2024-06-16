FROM ubuntu:22.04

WORKDIR /workspace

ENV DEBIAN_FRONTEND=non-interactive

RUN apt-get update && \
    apt-get install -y scilab 

WORKDIR /code

COPY bin .

CMD "./run.sh"