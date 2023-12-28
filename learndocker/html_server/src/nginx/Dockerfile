FROM	debian:bullseye

# install nginx
RUN		apt update\
		&& apt install vim nginx iputils-ping -y

COPY	./conf/nginx.conf ./etc/nginx/conf.d/

# CMD		[ "nginx", "-g", "daemon off;" ]

CMD		[ "sleep", "infinity" ]

EXPOSE	100