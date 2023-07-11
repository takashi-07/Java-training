.PHONY: hello clean

j:
	docker-compose exec java bash

b:
	docker-compose build && \
	docker-compose up -d && \
	docker-compose ps

u:
	docker-compose up -d && \
	docker-compose ps

down:
	docker-compose down && \
	docker-compose ps -a

s:
	sudo chmod -R 777 src
	
c:
	docker-compose down && \
	docker system prune -a && \
	docker-compose ps -a

