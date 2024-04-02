FROM maven as build
WORKDIR /app
COPY ..
RUN mvn install
FROM openjdk:17
WORKDIR /app
COPY --from-build /app/target/projet-1.0-SNAPSHOT.jar /app/
EXPOSE 9090
CMD ["java","-jar", "projet-1.0-SNAPSHOT.jar"]
