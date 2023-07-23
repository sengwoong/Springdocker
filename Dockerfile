FROM openjdk:11

RUN mkdir /app
WORKDIR /app

ADD ./app/build/libs/*.jar /app/app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]