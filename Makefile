NAME	= minio-arm
TAG	   ?= latest
USER	= altaris

SUDO   ?= sudo

all: build

build:
	$(SUDO) docker build . --build-arg ARCH=arm32v7 -t $(USER)/$(NAME):$(TAG)

push:
	$(SUDO) docker push $(USER)/$(NAME):$(TAG)
