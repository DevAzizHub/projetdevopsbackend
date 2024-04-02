FROM maven as build
WORKDIR /app
COPY . . 
RUN mvn install

FROM openjdk:11.0
WORKDIR /app
ADD target/*.jar app.jar
EXPOSE 9090
CMD [ "java",".jar","/app/app.jar"]
