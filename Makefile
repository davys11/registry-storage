init: docker-down-clear docker-pull docker-build password docker-up
up: docker-up
down: docker-down

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

password:
	@read -p "Enter username: " username; \
	read -s -p "Enter password: " password; \
	echo; \
	docker run registry:2.6 htpasswd -Bbn $$username $$password > htpasswd