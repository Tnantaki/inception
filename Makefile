VOLUME_DIR = /home/tnantaki/data

all: createdir build

createdir:
	mkdir -p ${VOLUME_DIR}/wordpress
	mkdir -p ${VOLUME_DIR}/mariadb

build:
	docker compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env up -d --build

down:
	docker compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down

start:
	docker compose -f ./srcs/docker-compose.yml start

stop:
	docker compose -f ./srcs/docker-compose.yml stop

re: down build

clean:
	docker compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down --rmi all --volumes

fclean:
	docker stop $(docker ps -qa) 
	docker system prune --all --force
	docker network prune --force
	docker volume prune --force

.PHONY : all set build down start stop re clean fclean
