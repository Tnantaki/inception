FROM	debian:bullseye

ARG		DB_NAME DB_USER DB_PASSWORD DB_ROOT DB_HOSTNAME

# install php
RUN		apt update\
		&& apt install vim wget php7.4 php7.4-fpm php7.4-mysql -y

# load wordpress content
RUN		mkdir -p /var/www/html\
		&& wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz\
		&& tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html\
		&& chown -R www-data:www-data /var/www/html/wordpress\
		&& chmod -R 755 /var/www/html/wordpress

COPY	./conf/www.conf /etc/php/7.4/fpm/pool.d/

COPY	./tools/connect_db.sh /home/

# connect database
RUN		chmod +x /home/connect_db.sh\
		&& bash /home/connect_db.sh && rm /home/connect_db.sh

# load wordpres-cli to able to use CLI to create users
RUN		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar\
		&& chmod +x wp-cli.phar\
		&& mv wp-cli.phar /usr/local/bin/wp

RUN		service php7.4-fpm start

CMD		[ "/usr/sbin/php-fpm7.4", "-F" ]