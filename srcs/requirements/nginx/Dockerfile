# syntax=docker/dockerfile:1
FROM alpine:3.16
RUN apk update
RUN apk add --no-cache \
	nginx \
	curl \
	vim \

RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
COPY conf/nginx.conf /etc/nginx
COPY conf/index.html /www/
CMD ["nginx", "-g", "daemon off;"]
