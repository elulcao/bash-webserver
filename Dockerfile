FROM ubuntu:latest
LABEL maintainer="elulcao@icloud.com"

RUN apt update && \
    apt install -y netcat && \
    apt clean

COPY server.sh /server.sh

EXPOSE 8080
ENTRYPOINT [ "./server.sh" ]
