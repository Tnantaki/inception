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

clean:
	docker compose -f docker-compose.yml --env-file .env down --rmi all --volumes

.PHONY : all build down start stop re clean
