all: rmi build push

rmi:
	docker rmi bugcrowd/varnish-alpine || true

build:
	docker build -t bugcrowd/varnish-alpine .

push:
	docker push bugcrowd/varnish-alpine
