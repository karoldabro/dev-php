.DEFAULT_GOAL := up

up:
	docker-compose up -d

down:
	docker-compose down

server: 
	docker exec -it docker_server_1 sh -c "cd /app && /bin/zsh"