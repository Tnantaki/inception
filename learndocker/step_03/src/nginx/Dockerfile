FROM	debian:bullseye

# install nginx
RUN		apt update\
		&& apt install vim nginx -y

COPY	./conf/nginx.conf ./etc/nginx/conf.d/

CMD		[ "nginx", "-g", "daemon off;" ]

EXPOSE	130