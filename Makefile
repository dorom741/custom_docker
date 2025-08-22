ROOT_DIR    = $(shell pwd)
NAMESPACE   = "default"

IMAGE_NAME = ghcr.io/dorom741/custom_docker/any-reader:silm
# GIT_HASH = $(shell git rev-parse --short  HEAD)

build_docker:
	docker build  -t $(IMAGE_NAME)  ./any-reader

docker_push:
	echo $(DOCKER_PASSWORD) |  docker login -u $(DOCKER_USERNAME) --password-stdin  $(DOCKER_REGISTRY)
	docker push $(IMAGE_NAME)