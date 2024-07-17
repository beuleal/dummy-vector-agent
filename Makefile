# include Makefile.*

#!make
.PHONY: up
up:
	docker compose up

.PHONY: down
down:
	docker compose down

.PHONY: run
run:
	vector