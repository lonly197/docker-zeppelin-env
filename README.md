# docker-zeppelin-env

[![](https://images.microbadger.com/badges/image/lonly/docker-zeppelin-env.svg)](http://microbadger.com/images/lonly/adocker-zeppelin-env)

> This docker image is mainly used for zeppelin operating environment.

## Introduction

This image includes java, python2, python2-dev, r and spark package.

## Build

```sh
docker build \
--rm \
-t lonly/docker-zeppelin-env \
--build-arg VCS_REF=`git rev-parse --short HEAD` \
--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` .
```

## Usage

This image is intended to be a base image for zeppelin, so you may use it like this:

There are already several images using this image, so you can refer to them as usage examples:

* [`lonly/docker-zeppelin`](https://hub.docker.com/r/lonly/docker-zeppelin/) ([github](https://github.com/lonly197/docker-zeppelin))

* [`lonly/docker-zeppelin-cn`](https://hub.docker.com/r/lonly/docker-zeppelin-cn/) ([github](https://github.com/lonly197/docker-zeppelin-cn))