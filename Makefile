#!make

help: _header
	${info }
	@echo Opciones:
	@echo ----------------------------
	@echo build
	@echo install
	@echo start / stop / restart
	@echo workspace
	@echo logs
	@echo clean
	@echo ----------------------------

_urls: _header
	${info }
	@echo Sitios disponibles:
	@echo ----------------------------
	@echo [Jekyll] http://localhost:4000
	@echo ----------------------------

_header:
	@echo ------
	@echo Jekyll
	@echo ------

build:
	@docker compose build --pull

install:
	@docker compose run --rm jekyll /bin/sh -c 'bundle install'

_start_command:
	@docker compose up -d

start: _start_command _urls

stop:
	@docker compose down

restart: stop start

workspace:
	@docker compose run --rm jekyll /bin/bash

logs:
	@docker compose logs

clean:
	@docker compose down -v --remove-orphans
