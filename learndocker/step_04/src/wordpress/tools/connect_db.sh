#!/bin/bash

if [ ! -e "/var/www/html/wordpress/wp-config.php" ]
then
	# for connect to database
	cd /var/www/html/wordpress
	cp wp-config-sample.php wp-config.php
	sed -i "s/database_name_here/${DB_NAME}/g" wp-config.php
	sed -i "s/username_here/${DB_USER}/g" wp-config.php
	sed -i "s/password_here/${DB_PASSWORD}/g" wp-config.php
	sed -i "s/localhost/${DB_HOSTNAME}/g" wp-config.php
	# create admin and user
	wp core install --url=${DOMAIN_NAME} \
		--title="inception" \
		--admin_user=${WP_AUSER} \
		--admin_password=${WP_APASS} \
		--admin_email=${WP_AEMAIL}
	wp config create --dbhost="mariadb" \
		--dbname="wordpress" \
		--dbuser="mark" \
		--dbpass="123" \
		--allow-root
fi
