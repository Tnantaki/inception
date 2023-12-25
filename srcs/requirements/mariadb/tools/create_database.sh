#!bin/bash

service mariadb start

if [ -d "/var/lib/mysql/$DB_NAME" ]
then
	echo "Database already created"
else
	echo "Create new database..."
	#create new database
	mariadb -e "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;"
	#create new user and password
	mariadb -e "CREATE USER IF NOT EXISTS \`${DB_USER}\`@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
	#set permission for database with every table to user
	mariadb -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO \`${DB_USER}\`@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
	#reload grant table immediately
	mariadb -e "FLUSH PRIVILEGES;"
	echo "Create database success"
fi

mariadb