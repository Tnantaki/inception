#!/bin/bash

service mariadb start

if [ -d "/var/lib/mysql/$DB_NAME" ]
then
	echo "Database exists"
else
	#enhance the security of your database server.
	# 1. Yes for prevents unauthorized access to the root account.
	# 2. Yes for change root password
	# 3,4. fill new Root password and Re-enter
	# 5. Yes for Remove anonymous user (default user on mariadb)
	# 6. Yes for Disallow root login remotely
	# 7. Yes for Remove test database (default database from mariadb)
	# 8. Yes for flush
	echo -e "\nY\nY\n$DB_ROOT\n$DB_ROOT\nY\nY\nY\nY" | mysql_secure_installation
	#create new database
	mariadb -e "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;"
	#create new user and password
	mariadb -e "CREATE USER IF NOT EXISTS \`${DB_USER}\`@'%' IDENTIFIED BY '${DB_PASSWORD}';"
	#set permission for database with every table to user
	mariadb -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO \`${DB_USER}\`@'%' IDENTIFIED BY '${DB_PASSWORD}';"
	#reload grant table immediately
	mariadb -e "FLUSH PRIVILEGES;"
fi
