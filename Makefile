install:
	cat /etc/hosts | grep ybendavi.42.fr || echo "127.0.0.1 ybendavi.42.fr" >> /etc/hosts; docker compose -f srcs/docker-compose.yml build
	mkdir -p /home/ybendavi/data/html
	mkdir -p /home/ybendavi/data/mysql

start:
	docker compose -f srcs/docker-compose.yml up

stop:
	docker compose -f srcs/docker-compose.yml stop

all:	install start

clean:
	docker compose -f srcs/docker-compose.yml down

totalclean: 
	docker system prune -a
re: stop clean all 

	
.PHONY: install start stop clean all re
