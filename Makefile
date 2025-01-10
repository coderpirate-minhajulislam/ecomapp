# Makefile

# Default target
.PHONY: migrate

migrate:
    docker exec -it ecom-app php artisan migrate

migrate-rollback:
    docker exec -it ecom-app php artisan migrate:rollback

composer-dump-autoload:
    docker exec -it ecom-app composer dump-autoload

clear-cache:
    docker exec -it ecom-app php artisan cache:clear
    docker exec -it ecom-app php artisan config:clear
    docker exec -it ecom-app php artisan route:clear
    docker exec -it ecom-app php artisan view:clear
