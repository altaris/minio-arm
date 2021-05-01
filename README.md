minio-arm
=========

A [minio](https://min.io/) docker image for ARM. Basically a copypasta from
[this](https://github.com/pixelchrome/minio-arm) and
[this](https://github.com/dimianstudio/minio-arm) projects.

This image is intended for use in a dockerized Raspbian host. Alpine 3.13 and
above are (for now) [unusable due to changes in `time64`
requirements](https://wiki.alpinelinux.org/wiki/Release_Notes_for_Alpine_3.13.0#time64_requirements),
whence the use of
[`arm32v7/alpine:3.12`](https://hub.docker.com/r/arm32v7/alpine) as a base
image.
