FROM	debian:bullseye

# install php
RUN		apt update\
		&& apt install vim wget php7.4 php7.4-fpm -y\
		&& apt install php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y

# load wordpress content
RUN		mkdir -p /var/www/html\
		&& wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz\
		&& tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html\
		&& chown -R www-data:www-data /var/www/html/wordpress\
		&& chmod -R 755 /var/www/html/wordpress

COPY	./conf/www.conf /etc/php/7.4/fpm/pool.d/

RUN		service php7.4-fpm start

CMD		[ "/usr/sbin/php-fpm7.4", "-F" ]
