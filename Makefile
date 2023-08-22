REPO?=ecpaas-dockerhub.ddns.net/kubesphere/ks-installer
TAG?=ecpaas-v332

build:
	docker build . --file Dockerfile --tag $(REPO):$(TAG)
push:
	docker push $(REPO):$(TAG)
all: build push
