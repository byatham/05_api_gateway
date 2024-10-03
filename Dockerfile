# Use the official OpenJDK base image
FROM openjdk:17-jdk-slim

# Copy the jar file into the container
ADD target/api-gateway.jar api-gateway.jar

# Expose the port on which the application will run
EXPOSE 3333

# Command to run the application
ENTRYPOINT ["java", "-jar", "api-gateway.jar"]
