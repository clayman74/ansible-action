DOCKER_REPO=clayman083
IMAGE_NAME=ansible-action
VERSION=1.0.0

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: tag
tag:
	docker tag $(IMAGE_NAME):latest $(DOCKER_REPO)/$(IMAGE_NAME):$(VERSION)

.PHONY: publish
publish: tag
	docker push $(DOCKER_REPO)/$(IMAGE_NAME):$(VERSION)
