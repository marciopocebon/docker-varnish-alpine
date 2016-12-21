FROM alpine:3.4

RUN apk add --no-cache varnish=4.1.2-r3

ENV VCL_CONFIG      /etc/varnish/default.vcl
ENV CACHE_SIZE      64m
ENV VARNISHD_PARAMS -p default_ttl=3600 -p default_grace=3600

COPY start.sh /start.sh
RUN chmod 755 /start.sh

CMD ["/bin/sh", "/start.sh"]
EXPOSE 80
