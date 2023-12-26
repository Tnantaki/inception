FROM	debian:bullseye

RUN		apt update\
		&& apt install vim mariadb-server mariadb-client -y

# COPY	./conf/50-server.cnf etc/mysql/mariadb.conf.d

# COPY	./tools/create_database.sh /home

#CMD		[ "bash", "/home/create_database.sh" ]