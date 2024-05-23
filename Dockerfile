FROM openjdk:8
EXPOSE 8080
RUN mkdir target
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} target/myproject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/target/myproject-0.0.1-SNAPSHOT.jar"]

#FROM openjdk:8-jdk-slim as builder
#WORKDIR build
#EXPOSE 8080
#RUN mkdir target
#ARG JAR_FILE=./target/*.jar
#COPY ${JAR_FILE} target/app.jar
#ENTRYPOINT ["java","-jar","/target/app.jar"]

