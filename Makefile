NAME = bentheax/glacier-cron
TAG ?= latest
PROJECT = $(NAME):$(TAG)
ARCHIVE_TARGET ?= ::explosions::

.PHONY: build run shell push

build:
	docker build --rm -t $(PROJECT) docker

run:
	docker run --rm -it -v $(ARCHIVE_TARGET):/target \
		-e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
		-e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY} \
		-e AWS_REGION=$AWS_REGION} \
		$(PROJECT)

shell:
	docker run --rm -it -v $(ARCHIVE_TARGET):/target \
		-e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
		-e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
		-e AWS_REGION=$AWS_REGION} \
		$(PROJECT) bash

push:
	docker push $(PROJECT)
