#!/bin/sh

quarkusVersion="$(sh quarkusVersion.sh)"

rm -rf temp
rm -rf lib/*
mvn io.quarkus:quarkus-maven-plugin:${quarkusVersion}:create -DprojectGroupId=temp -DprojectArtifactId=temp \
    -Dextensions="smallrye-health, smallrye-metrics, smallrye-openapi, smallrye-fault-tolerance, smallrye-jwt, resteasy, resteasy-jsonb, arc, smallrye-rest-client, hibernate-validator, hibernate-orm, jdbc-postgresql" || exit 10
cd temp
mvn package || exit 20
cp target/lib/* ../lib/
cd ..
rm -rf temp
