# FROM karelbemelmans/pipelines-hugo
FROM unibet/docker-centos-example-builder
MAINTAINER mail@karelbemelmans.com

COPY ./docker-build/build.sh /build.sh

VOLUME /src /output

WORKDIR /src
CMD ["/build.sh"]
