#!/bin/sh
version="$(sh quarkusVersion.sh)"
docker build . --build-arg quarkusVersion=${version} -t quarkus-jvm:${version}
