#!/bin/bash

if [ -e "/var/www/html/wordpress/wp-config-sample.php" ]
then
	cd /var/www/html/wordpress
	mv wp-config-sample.php wp-config.php
	sed -i "s/database_name_here/${DB_NAME}/g" wp-config.php
	sed -i "s/username_here/${DB_USER}/g" wp-config.php
	sed -i "s/password_here/${DB_PASSWORD}/g" wp-config.php
fi
