docker-build:
	docker build -t app .
docker-run:
	docker run -it -p 3000:3000 app