# Build stage
#
FROM maven:3.8.5-openjdk-8-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -B package -e -X --file /home/app/pom.xml