#!make

help: _header
	${info }
	@echo Opciones:
	@echo ----------------------------
	@echo build
	@echo install
	@echo start / stop
	@echo workspace
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

workspace:
	@docker compose run --rm jekyll /bin/bash

clean:
	@docker compose down -v --remove-orphans
