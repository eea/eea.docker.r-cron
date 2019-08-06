FROM alpine

MAINTAINER michimau <mauro.michielon@eea.europa.eu>


RUN apk update -y
RUN apk fetch java-postgresql-jdbc curl openjdk8
RUN apk add java-postgresql-jdbc curl openjdk8

COPY        entrypoint.sh /
ENTRYPOINT  ["/entrypoint.sh"]
