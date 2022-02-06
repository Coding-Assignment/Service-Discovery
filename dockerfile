FROM openjdk:16-alpine3.13
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} service-discovery.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/service-discovery.jar"]
