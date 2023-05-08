FROM amazoncorretto:17-alpine3.14

COPY target/SpringBoot-0.0.1-SNAPSHOT.jar app.jar

ENV DB_URI=$DB_URI
ENV DB_PASSWORD=$DB_PASSWORD
ENV DB_USER=$DB_USER

RUN echo "Env vars set"
RUN echo "user $DB_USER"

ENTRYPOINT ["java", "-jar", "/app.jar"]
