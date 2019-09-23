FROM alpine:latest
RUN apk update
RUN apk upgrade

RUN apk add tor
EXPOSE 9150
EXPOSE 9151

RUN rm /var/cache/apk/*

ADD ./torrc /etc/tor/torrc

USER tor
CMD /usr/bin/tor -f /etc/tor/torrc
