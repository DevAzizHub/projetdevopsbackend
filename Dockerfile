FROM openjdk:17
RUN mkdir app
WORKDIR /app
COPY /target/projet-1.1.jar achat.jar  
EXPOSE 8089
RUN chmod 777 achat.jar 
CMD ["java","-jar","achat.jar"]
