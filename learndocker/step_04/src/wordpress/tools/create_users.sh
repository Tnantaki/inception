#!/bin/bash

wp core install --url=https://${DOMAIN_NAME} \
	--title="inception" \
	--admin_user=${WP_AUSER} \
	--admin_password=${WP_APASS} \
	--admin_email=${WP_AEMAIL}
wp config create --dbhost="mariadb" \
	--dbname="wordpress" \
	--dbuser="mark" \
	--dbpass="123" \
	--allow-root