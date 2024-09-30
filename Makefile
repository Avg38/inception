COMPOSE_FILE=srcs/docker-compose.yml

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
	docker colume rm $$(docker volume ls -q)

status:
	docker-compose -f $(COMPOSE_FILE) ps

re: fclean up

.PHONY: build up down restart logs clean fclean status re
