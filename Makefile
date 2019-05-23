DOCKER_REPO=clayman083
IMAGE_NAME=ansible-action


.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: tag
tag:
	docker tag $(IMAGE_NAME):latest $(DOCKER_REPO)/$(IMAGE_NAME):${GITHUB_REF}

.PHONY: publish
publish: tag
	docker push $(DOCKER_REPO)/$(IMAGE_NAME):${GITHUB_REF}
