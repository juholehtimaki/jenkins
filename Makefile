docker-build:
	docker build -rm -t app
	docker run -ti -p 3000:3000 app