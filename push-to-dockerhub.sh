#!/bin/sh
version="$(sh version.sh)"
docker tag quarkus-jvm:${version} zemiak/quarkus-jvm:${version}

#docker login --username=zemiak --email=zemiak@gmail.com
docker push zemiak/quarkus-jvm:${version}
