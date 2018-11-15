FROM alpine:latest

ENV CONFIG_JSON=none VER=none

RUN mkdir -m 777 /v2raybin
ADD entrypoint.sh /entrypoint.sh
ADD config.json /config.json
RUN chmod +x /entrypoint.sh 
ENTRYPOINT  /entrypoint.sh 

EXPOSE 8080
