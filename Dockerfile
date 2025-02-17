# Declare the build argument
ARG BASE_IMAGE

FROM ${BASE_IMAGE}
RUN apt-get update && apt-get install -y maven

WORKDIR /app

COPY . /app

EXPOSE 8080

# Run the application using Maven
CMD ["mvn", "spring-boot:run"]
