all:
	docker exec -ti wordpress chmod 775 -R /var/www
	#docker exec -ti wordpress chmod 777 -R /var/lib/mysql
	sudo chmod 777 -R ./mysql
	docker exec -ti wordpress chown www-data:www-data -R /var/www

restart:
	docker-compose down && docker-compose up
