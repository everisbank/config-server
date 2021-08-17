FROM openjdk:11.0.7-jre-slim-buster

#RUN adduser --system --group spring
#USER spring:spring
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]