server:
	./server.js

check-docker:
	docker info > /dev/null 2>&1

build-docker-image: check-docker
	docker build -t tazama/landscape .

run-server-on-docker: build-docker-image
	docker run -ti --rm -p 8001:8001 tazama/landscape

clean:
	docker rmi -f tazama/landscape
