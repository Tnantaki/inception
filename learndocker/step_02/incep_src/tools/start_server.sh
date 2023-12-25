#!bin/bash

service mariadb start

service php7.4-fpm start

nginx -g "daemon off;"
