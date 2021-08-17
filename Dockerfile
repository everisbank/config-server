FROM openjdk:11.0.7-jre-slim-buster

RUN adduser --system --group spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} config-server.jar
ENTRYPOINT ["java", "-jar", "/config-server.jar"]