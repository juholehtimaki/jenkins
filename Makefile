docker-build:
	docker build -t app .
	docker run -ti -p 3000:3000 app