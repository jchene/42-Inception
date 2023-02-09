# syntax=docker/dockerfile:1
FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld_safe"]
