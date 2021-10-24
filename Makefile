include .env

help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "   docker-start		Create and start containers"
	@echo "   docker-stop		Stop and clear all services"
	@echo "   logs				Follow log output"

docker-start:
	@docker-compose up -d

docker-stop:
	@docker-compose down -v

logs:
	@docker-compose logs -f

#docker exec some-mysql sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > /home/all-databases.sql
#docker exec -i some-mysql sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < /some/path/on/your/host/all-databases.sql
