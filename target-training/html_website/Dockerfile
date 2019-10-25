FROM hub.docker.target.com/alpine

RUN apk update \
&& apk add bash coreutils

COPY days_to_spring.sh /

CMD ["/days_to_spring.sh"]
