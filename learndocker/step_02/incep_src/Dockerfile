FROM	debian:bullseye

ARG		DB_NAME \
		DB_USER \
		DB_PASSWORD

# install nginx
RUN		apt update\
		&& apt install vim nginx -y

# install php
RUN		apt install wget php7.4 php7.4-fpm php-mysql -y\

# load wordpress content
RUN		mkdir -p /var/www/html\
		&& wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz\
		&& tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html\
		&& chown -R www-data:www-data /var/www/html/wordpress\
		&& chmod -R 755 /var/www/html/wordpress

# install mariadb
RUN		apt install vim mariadb-server mariadb-client -y
	
# copy nginx conf
COPY	./conf/nginx.conf /etc/nginx/conf.d/

# copy mariadb script
COPY	./tools/mariadb.sh /home/

# copy wordpress script
COPY	./tools/wordpress.sh /home/

# copy run script
COPY	./tools/start_server.sh ./home/

RUN		bash /home/mariadb.sh

CMD		[ "bash", "/home/start_server.sh" ]

EXPOSE	120