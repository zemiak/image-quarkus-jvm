FROM alpine:3.9

ARG quarkusVersion
RUN apk add --no-cache openjdk8-jre-base && mkdir -p /opt/quarkus/lib && echo $quarkusVersion >/opt/quarkus/version.txt
COPY lib/* /opt/quarkus/lib/
WORKDIR /opt/quarkus
ENV AUTODEPLOY_FOLDER "/opt/quarkus"

CMD java -Xmx256m -Xms128m app.jar
