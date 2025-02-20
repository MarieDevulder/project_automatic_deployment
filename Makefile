.PHONY: build
build:
	docker compose -f docker-compose.dev.yaml build

.PHONY: up
up:
	docker compose -f docker-compose.dev.yaml up

.PHONY: prod
prod:
	echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
	docker compose -f docker-compose.prod.yaml build
	docker compose -f docker-compose.prod.yaml up
