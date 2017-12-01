FROM lonly/docker-alpine-java

FROM lonly/docker-alpine-r

FROM python:2-alpine3.6

ARG VERSION=0.7.3
ARG BUILD_DATE
ARG VCS_REF

LABEL \
    maintainer="lonly197@qq.com" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.docker.dockerfile="/Dockerfile" \
    org.label-schema.license="Apache License 2.0" \
    org.label-schema.name="lonly/docker-zeppelin-env" \
    org.label-schema.url="https://github.com/lonly197" \
    org.label-schema.description="BThis docker image is mainly used for zeppelin operating environment." \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/lonly197/docker-zeppelin-env" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.vendor="lonly197@qq.com" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

# Install packages
RUN	set -x \
    # Add alpine repo
    && echo http://mirrors.aliyun.com/alpine/v3.6/main/ >> /etc/apk/repositories \
    && echo http://mirrors.aliyun.com/alpine/v3.6/community/ >> /etc/apk/repositories \
    ## Update apk package
    && apk update \
    ## Install base package
    && apk add --no-cache --upgrade build-base gfortran python2-dev python2-tkinter freetype-dev libpng-dev lapack-dev libxml2-dev libxslt-dev jpeg-dev \
    ## Install python related package
    && pip install --upgrade --no-cache-dir py4j numpy scipy pandas matplotlib \ 
    ## Cleanup
    && rm -rf *.tgz *.tar *.zip \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/*