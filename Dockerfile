FROM alpine:latest

RUN apk add --no-cache chrony

COPY chrony-ntp.sh /

RUN chmod +x /chrony-ntp.sh

EXPOSE 123/udp

ENTRYPOINT [ "/chrony-ntp.sh" ]
