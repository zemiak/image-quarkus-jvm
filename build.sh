#!/bin/sh
version="$(sh version.sh)"
docker build . --build-arg quarkusVersion=${version} -t quarkus-jvm:${version}
