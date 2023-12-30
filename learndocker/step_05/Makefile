NAME = inception

all: build

build:
	docker compose -f docker-compose.yml --env-file .env up -d --build

down:
	docker compose -f docker-compose.yml --env-file .env down

start:
	docker compose -f docker-compose.yml start

stop:
	docker compose -f docker-compose.yml stop

re: down build

clean: down
	docker system prune --all

fclean:
	docker stop $(docker ps -qa)
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force

.PHONY : all build down start stop re clean fclean
