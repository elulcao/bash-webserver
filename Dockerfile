FROM ubuntu:latest
LABEL maintainer="elulcao@icloud.com"
LABEL org.opencontainers.image.source https://github.com/elulcao/docker pull ghcr.io/elulcao/bash-webserver:latest

RUN apt update && \
    apt install -y netcat && \
    apt clean

COPY server.sh /server.sh

EXPOSE 8080
ENTRYPOINT [ "./server.sh" ]
