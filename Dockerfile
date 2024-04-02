FROM openjdk:17
ADD target/projet-1.0-SNAPSHOT.jar /app/projet-1.0-SNAPSHOT.jar
WORKDIR /app
EXPOSE 9090
CMD ["java","-jar", "projet-1.0-SNAPSHOT.jar"]

