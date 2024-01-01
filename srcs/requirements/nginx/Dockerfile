FROM	debian:bullseye

RUN		apt update\
		&& apt install vim nginx openssl -y
	
RUN		mkdir -p /etc/nginx/ssl\
		&& openssl req -x509 -out /etc/nginx/ssl/ca.crt -keyout /etc/nginx/ssl/private.key -nodes\
		 -subj "/C=TH/ST=Bangkok/L=Ladkrabang/O=42BKK/OU=Cadet/CN=Mos/UID=tnantaki"

COPY	./conf/nginx.conf ./etc/nginx/conf.d/

# RUN		rm /etc/nginx/sites-enabled/default \
# 		/etc/nginx/sites-available/default

CMD		[ "nginx", "-g", "daemon off;" ]

EXPOSE	443