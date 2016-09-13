FROM alpine:3.4

MAINTAINER Francesco Vezzoli <fvezzoli@iz2vtw.net>

RUN apk add --no-cache --update unbound

COPY unbound.conf /etc/unbound/unbound.conf

RUN unbound-anchor -a /etc/unbound/root.key ; true

RUN unbound-control-setup && \
	wget ftp://FTP.INTERNIC.NET/domain/named.cache -O /etc/unbound/root.hints

COPY entrypoint.sh /entrypoint.sh

VOLUME ["/etc/unbound"]

EXPOSE 53/udp
EXPOSE 53

ENTRYPOINT ["/entrypoint.sh"]
