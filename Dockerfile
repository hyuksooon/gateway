# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Add a volume pointing to /tmp
VOLUME /tmp

EXPOSE 8081

# The application's jar file
ARG JAR_FILE=build/libs/gateway-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
COPY ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]
