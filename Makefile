.PHONY: requirements build

all: requirements build

requirements:
	rm -rf generated
	mkdir generated

build:
	make -C ./chirpstack/api php
	cp -R chirpstack/api/php/generated ./
	cp chirpstack/api/php/composer.json ./
	cp chirpstack/api/php/README.md ./
