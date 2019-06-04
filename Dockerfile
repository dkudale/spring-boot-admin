FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD ./target/spring-boot-admin-1.0.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
EXPOSE 8763 