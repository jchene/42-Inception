# syntax=docker/dockerfile:1
FROM alpine:3.16
RUN apk update
RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
COPY ./nginx.conf /etc/nginx/
COPY ./index.html /www/
CMD ["nginx", "-g", "daemon off;"]
