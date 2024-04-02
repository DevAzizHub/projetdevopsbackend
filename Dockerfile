FROM openjdk:17
WORKDIR /app
ADD /target/projet-1.0-SNAPSHOT.jar achat.jar
EXPOSE 8089
CMD ["java", "-jar", "/app/app.jar"] 
