# Use OpenJDK 17 as base image
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy built JAR into container
COPY target/hospitalManagement-0.0.1-SNAPSHOT.jar hospital.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "hospital.jar"]
