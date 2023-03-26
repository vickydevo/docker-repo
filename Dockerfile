FROM openjdk:8_alpine
ADD target/*.jar app.jar
ENTRYPOINT ["java","-jar", "app.jar", ""]