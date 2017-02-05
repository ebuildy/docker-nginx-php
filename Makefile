build:
	docker build -t ebuildy/nginx-php src

dev/run:
	docker run -ti --rm -p 80:80 ebuildy/nginx-php