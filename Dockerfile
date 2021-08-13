FROM openjdk:8
EXPOSE 8080
ADD target/projectb-0.0.1-SNAPSHOT.jar projectb-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/projectb-0.0.1-SNAPSHOT.jar"]