FROM amazoncorretto:17-alpine3.14

COPY target/SpringBoot-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]

