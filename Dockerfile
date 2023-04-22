# creates a layer from the openjdk:17-alpine Docker image.
#FROM openjdk:17-alpine
FROM adoptopenjdk/openjdk11:latest

MAINTAINER brunnao20@gmail.com

# cd /app
WORKDIR /app

# Refer to Maven build -> finalName
ARG JAR_FILE=target/login-api*.jar

# cp target/spring-boot-docker-0.0.1-SNAPSHOT.jar /app/spring-boot-docker.jar
COPY ${JAR_FILE} login.jar

# java -jar /app/spring-boot-docker.jar
CMD ["java", "-jar", "-Xmx1024M", "/app/login-api.jar"]

# Make port 8090 available to the world outside this container
EXPOSE 8090
