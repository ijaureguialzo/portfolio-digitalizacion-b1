#!make

help: _header
	${info }
	@echo Opciones:
	@echo ----------------------------
	@echo build
	@echo start / stop
	@echo workspace
	@echo serve
	@echo clean
	@echo ----------------------------

_urls: _header
	${info }
	@echo Sitios disponibles:
	@echo ----------------------------
	@echo [Jekyll] http://localhost:4000
	@echo [Jekyll] http://localhost:35729
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
	@docker compose run --rm --service-ports jekyll /bin/sh -c 'bundle exec jekyll serve --host 0.0.0.0'

start: _urls _start_command

stop:
	@docker compose down

workspace:
	@docker compose run --rm jekyll /bin/bash

clean:
	@docker compose down -v --remove-orphans
