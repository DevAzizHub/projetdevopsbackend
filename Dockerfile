FROM maven as build
WORKDIR /app
COPY . .
FROM openjdk:17
WORKDIR /app
COPY --from=build /target/projet-1.0-SNAPSHOT.jar /app/
EXPOSE 9090
CMD ["java","-jar", "projet-1.0-SNAPSHOT.jar"]
