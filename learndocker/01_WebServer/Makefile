NAME = inception

all : build

build :
	docker compose -f docker-compose.yml up -d --build

down :
	docker compose -f docker-compose.yml down --rmi all

.PHONY : all build down