IMAGE = minio-arm
SUDO = sudo

all: build test

build:
	$(SUDO) docker build -t $(IMAGE):$$(git rev-parse --abbrev-ref HEAD) .

test: build
	-mkdir -p ./test/data/
	$(SUDO) docker run --rm \
	--volume $(shell pwd)/test/data:/data \
	--env MINIO_ACCESS_KEY=access-key \
	--env MINIO_SECRET_KEY=secret-key \
	$(IMAGE):$$(git rev-parse --abbrev-ref HEAD)
