NAME	= minio-mc-arm
TAG	   ?= latest
USER	= altaris

SUDO   ?= sudo

all: build push

build:
	$(SUDO) docker build . --platform linux/arm/v7 -t $(USER)/$(NAME):$(TAG)

push:
	$(SUDO) docker push $(USER)/$(NAME):$(TAG)
