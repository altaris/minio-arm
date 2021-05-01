FROM arm32v7/ubuntu

COPY qemu-arm-static /usr/bin

WORKDIR /usr/bin
RUN                                                                        \
    apk add --no-cache curl                                             && \
    curl -sSLO https://dl.minio.io/server/minio/release/linux-arm/minio && \
    chmod 0755 ./minio

EXPOSE 9000

ENTRYPOINT ["minio"]
