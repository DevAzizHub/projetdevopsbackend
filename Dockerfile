FROM maven as build
WORKDIR /app
COPY . .
FROM openjdk:17
WORKDIR /app
CMD ["pwd"]
CMD ["java","-jar", "projet-1.0-SNAPSHOT.jar"]
