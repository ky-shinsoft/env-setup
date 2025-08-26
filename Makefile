.PHONY: up down

up:
	docker network create --driver=bridge proxy
	docker compose -f ./nginx/docker-compose.yml up -d

down:
	docker compose -f ./nginx/docker-compose.yml down
	docker network rm proxy
