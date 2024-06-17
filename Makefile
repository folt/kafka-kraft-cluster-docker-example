DOCKER_PATH ?= kafka-docker/docker-compose.yml
CONTAINER_NAME ?= kafka

.PHONY: up-script

up-cluster:
	docker compose -f ${DOCKER_PATH} up ${CONTAINER_NAME}-0 ${CONTAINER_NAME}-1 ${CONTAINER_NAME}-2 ${CONTAINER_NAME}-ui schema-registry -d --remove-orphans

down:
	docker compose -f ${DOCKER_PATH} down --remove-orphans
