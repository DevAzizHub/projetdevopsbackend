FROM openjdk:17
ADD /home/aziz/Bureau/projet/target/projet-1.0-SNAPSHOT.jar achat.jar
EXPOSE 8089
ENTRYPOINT ["java", "-jar", "achat.jar"]
