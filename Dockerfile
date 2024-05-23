FROM openjdk:8
WORKDIR /app
COPY myproject-0.0.1-SNAPSHOT.jar /app/myproject-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","myproject-0.0.1-SNAPSHOT.jar"]
