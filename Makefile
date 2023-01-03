psalm:
	docker compose -f ./docker-compose.yml exec -T app vendor/bin/psalm --no-cache -c ./psalm.xml
phpcs:
	docker compose -f ./docker-compose.yml exec -T app vendor/bin/phpcs --standard=./phpcs.xml --report=emacs .
phpmd:
	docker compose -f ./docker-compose.yml exec -T app vendor/bin/phpmd ./src/PhpSample.php text ./phpmd.xml
clear_cache:
	docker compose -f ./docker-compose.yml exec -T app composer dump-autoload
	docker compose -f ./docker-compose.yml exec -T app php artisan config:cache
