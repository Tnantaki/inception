FROM	debian:bullseye

# install php
RUN		apt update\
		&& apt install vim wget -y

# load wordpress content
RUN		mkdir -p /var/www/html

COPY	./content/index.html /var/www/html/

CMD		[ "sleep", "infinity" ]
