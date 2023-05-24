REPO?=ecpaas/ks-installer
TAG?=v3.3.2

build:
	docker build . --file Dockerfile --tag $(REPO):$(TAG)
push:
	docker push $(REPO):$(TAG)
all: build push
