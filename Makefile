COMPOSE_FILE=srcs/docker-compose.yml

all: build up

build:
	docker-compose -f $(COMPOSE_FILE) build

up: build
	docker-compose -f $(COMPOSE_FILE) up -d

down:
	docker-compose -f $(COMPOSE_FILE) down

restart: down up

logs:
	docker-compose -f $(COMPOSE_FILE) logs -f

clean: down
	docker system prune -a

fclean: clean
	@if [ -n "$$(docker volume ls -q)" ]; then docker volume rm $$(docker volume ls -q); fi

status:
	docker-compose -f $(COMPOSE_FILE) ps

re: fclean up

.PHONY: build up down restart logs clean fclean status re
