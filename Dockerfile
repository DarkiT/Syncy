FROM alpine:latest
MAINTAINER ZiShuo <www@zishuo.uu.me>


RUN apk add --update \
	bash \
	python \
	py-curl \
	&& rm -rf /var/cache/apk/*

VOLUME /config /downloads

COPY root/ /

RUN chmod +x /syncy.py && \
	chmod +x /init.sh && \
	chmod +x /syncyd.sh

CMD ["/init.sh"]