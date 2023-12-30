FROM	debian:bullseye

ARG		DB_NAME \
		DB_USER \
		DB_PASSWORD

RUN		apt update\
		&& apt install vim mariadb-server mariadb-client -y

COPY	./conf/50-server.cnf etc/mysql/mariadb.conf.d

COPY	./tools/mariadb.sh /home

RUN		chmod 755 /home/mariadb.sh

# RUN		bash /home/mariadb.sh && rm /home/mariadb.sh

# CMD		[ "sleep", "infinity" ]

CMD		[ "/usr/bin/mysqld_safe" ]

EXPOSE	3306
