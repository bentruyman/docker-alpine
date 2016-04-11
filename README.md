# Alpine

> Alpine Linux is a security-oriented, lightweight Linux
> distribution based on musl libc and busybox.

Foundational image based on the official [alpine](https://hub.docker.com/_/alpine/) image from which all other images in this repository are based. This image adds a user named `core` with a `uid` of `1000`, allowing one to de-escalate privileges to this user if one so chooses.

## Usage

```sh
docker run --rm -it bentruyman/alpine
```
