FROM	alpine

WORKDIR	/home/website

COPY	website .

RUN		apk update &&\
		apk add vim nginx

COPY	conf /etc/nginx/http.d

CMD		[ "nginx", "-g", "daemon off;" ]

EXPOSE	1111