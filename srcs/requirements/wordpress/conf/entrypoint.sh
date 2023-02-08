#!/bin/bash
sleep 10
wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=127.0.0.1:3306 --path='/var/www/wordpress'
mkdir /run/php
exec "$@"
