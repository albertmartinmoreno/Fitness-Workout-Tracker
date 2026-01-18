up:
	docker compose up -d --force-recreate

down:
	docker compose down

build:
	docker compose build --no-cache

install:
	docker compose exec php composer install \
		--no-scripts \
		--no-plugins
