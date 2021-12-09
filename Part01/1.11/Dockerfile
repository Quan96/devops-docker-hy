FROM openjdk:11

WORKDIR /usr/src/app
EXPOSE 8080

COPY ../../material-application/spring-example-project /usr/src/app/

RUN /bin/sh -c "./mvnw package"
RUN java -jar ./target/docker-example-1.1.3.jar