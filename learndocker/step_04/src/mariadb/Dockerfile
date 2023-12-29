FROM	debian:bullseye

ARG		DB_NAME \
		DB_USER \
		DB_PASSWORD

RUN		apt update\
		&& apt install vim mariadb-server mariadb-client -y

COPY	./conf/50-server.cnf etc/mysql/mariadb.conf.d

COPY	./tools/create_database.sh /home

RUN		chmod 755 /home/create_database.sh

RUN		bash /home/create_database.sh && rm /home/create_database.sh

# CMD		[ "bash", "/home/create_database.sh" ]

# CMD		[ "sleep", "infinity" ]

CMD		[ "/usr/bin/mysqld_safe" ]

EXPOSE	3306
