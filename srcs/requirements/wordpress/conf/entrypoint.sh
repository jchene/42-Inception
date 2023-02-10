#!/bin/bash
sleep 10
if [ ! -f "/var/www/wordpress/wp-config.php" ]; then
	wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306 --path='/var/www/wordpress'
	wp core install --allow-root --path='/var/www/wordpress' --url=jchene.42.fr --title=Inception --admin_user=$SQL_USER --admin_password=$SQL_PASSWORD
	wp user create --allow-root --path='/var/www/wordpress' jchene jchene@student.42.fr --user_pass=
fi
if [ ! -d "/run/php" ]; then
	mkdir /run/php
fi
exec "$@"
