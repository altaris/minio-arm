FROM arm32v7/alpine:3.12

WORKDIR /usr/bin
RUN                                                                        \
    apk add --no-cache curl                                             && \
    curl -sSL https://dl.minio.io/server/minio/release/linux-arm/archive/minio.RELEASE.2022-10-24T18-35-07Z -o minio && \
    chmod 0755 ./minio

EXPOSE 9000

ENTRYPOINT ["minio"]
