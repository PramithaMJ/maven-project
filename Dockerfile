# Use a lightweight Linux distribution as base image
FROM openjdk:17 AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the Maven executable JAR file and the necessary files to the container
COPY target/maven-project.jar /app/

# Switch to a non-root user for better security
USER nobody

# Expose the port that the application will listen on
EXPOSE 8080

# Specify the command to run the application
ENTRYPOINT ["java", "-jar", "maven-project.jar"]
