WP_DATA = /home/avialle-/data/wordpress
DB_DATA = /home/avialle-/data/mariadb
DOCKER_COMPOSE = docker-compose -f srcs/docker-compose.yml

all: build up

build:
	$(DOCKER_COMPOSE) build

up: build
	@mkdir -p $(WP_DATA)
	@mkdir -p $(DB_DATA)
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

start:
	$(DOCKER_COMPOSE) start

stop:
	$(DOCKER_COMPOSE) stop

clean: down
	@docker stop $$(docker ps -qa) || true
	@docker rm $$(docker ps -qa) || true
	@docker rmi -f $$(docker images -qa) || true
	@rm -rf $(WP_DATA) || true
	@rm -rf $(DB_DATA) || true

re: clean up

prune: clean
	@docker system prune -a --volumes -f

.PHONY: build up down clean prune re
