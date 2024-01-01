FROM	debian:bullseye

# install php
RUN		apt update\
		&& apt install vim wget php7.4 php7.4-fpm php7.4-mysql -y

# load wordpress content
RUN		mkdir -p /var/www/html\
		&& wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz\
		&& tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html\
		&& chown -R www-data:www-data /var/www/html/wordpress\
		&& chmod -R 755 /var/www/html/wordpress

# load wordpres-cli to able to use CLI to create users
RUN		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar\
		&& chmod +x wp-cli.phar\
		&& mv wp-cli.phar /usr/local/bin/wp

COPY	./conf/www.conf /etc/php/7.4/fpm/pool.d/

COPY	./tools/setup_wp.sh /home/

RUN		chmod +x /home/setup_wp.sh

RUN		service php7.4-fpm start

ENTRYPOINT [ "/home/setup_wp.sh" ]

CMD		[ "/usr/sbin/php-fpm7.4", "-F" ]

# CMD		[ "bash", "/home/setup_wp" ]

# CMD		[ "sleep", "infinity" ]