FROM openjdk:17
ADD target/projet-1.0-SNAPSHOT.jar achat.jar
EXPOSE 8089
ENTRYPOINT ["java", "-jar", "achat.jar"]
