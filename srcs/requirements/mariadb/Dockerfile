FROM	debian:bullseye

ARG		DB_NAME DB_USER DB_PASSWORD DB_ROOT

RUN		apt update\
		&& apt install vim mariadb-server mariadb-client -y

COPY	./conf/50-server.cnf etc/mysql/mariadb.conf.d

COPY	./tools/mariadb.sh /home

RUN		chmod +x /home/mariadb.sh\
		&& bash /home/mariadb.sh && rm /home/mariadb.sh\
		&& chown -R mysql:mysql /var/run/mysqld\
		&& chmod -R 777 /var/run/mysqld

CMD		[ "/usr/bin/mysqld_safe" ]

# CMD		[ "sleep", "infinity" ]

EXPOSE	3306
