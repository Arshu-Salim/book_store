FROM openjdk:alpine

WORKDIR usr/src/app/

COPY target/book_store-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "metadata-service.jar"]