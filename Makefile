docker-build:
	docker build -t app .
docker-run:
	docker run -t -d -p 3000:3000 app
docker-stop:
	docker stop $(docker ps -qf "name=app")