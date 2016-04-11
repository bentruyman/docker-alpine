.PHONY:build test all

DOCKER_IMAGE_NAME=bentruyman/alpine
DOCKER_IMAGE_TAGS=3 3.3 latest

all: build test

build:
	docker build -t $(DOCKER_IMAGE_NAME) .

test:
	docker run --rm \
		-v $(CURDIR):/app \
		-v $$(which docker):$$(which docker) \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-e DOCKER_IMAGE_NAME=$(DOCKER_IMAGE_NAME) \
		dduportal/bats:0.4.0 \
		/app/test
