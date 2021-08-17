FROM openjdk:11.0.7-jre-slim-buster

VOLUME /tmp
EXPOSE 8888
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} config-server.jar
ENTRYPOINT ["java", "-jar", "/config-server.jar"]d