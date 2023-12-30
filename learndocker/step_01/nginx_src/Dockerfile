FROM	debian:bullseye

RUN		apt update\
		&& apt install vim nginx -y
	
COPY	./conf/nginx.conf ./etc/nginx/conf.d/

COPY	./html/index.html ./var/www/html/

CMD		[ "nginx", "-g", "daemon off;" ]

EXPOSE	100