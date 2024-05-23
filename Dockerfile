FROM openjdk:8
WORKDIR /app
COPY target/myproject-0.0.1-SNAPSHOT.jar /app/myproject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","myproject-0.0.1-SNAPSHOT.jar"]
