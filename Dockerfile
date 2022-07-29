FROM openjdk:8-jre-alpine

EXPOSE 8080

ARG ./build/libs/my-app-0.0.1-SNAPSHOT.jar 

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "my-app-0.0.1-SNAPSHOT.jar"]
