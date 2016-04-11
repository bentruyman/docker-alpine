FROM alpine:3.3
MAINTAINER Ben Truyman <ben@truyman.com>

RUN adduser -D -u 1000 core

CMD ["/bin/sh"]
