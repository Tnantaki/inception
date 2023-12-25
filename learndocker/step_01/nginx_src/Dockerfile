FROM	debian:bullseye

RUN		apt update\
		&& apt install vim nginx -y
	
COPY	./conf/nginx.conf ./etc/nginx/conf.d/

CMD		[ "nginx", "-g", "daemon off;" ]

EXPOSE	100