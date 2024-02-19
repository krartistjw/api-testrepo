FROM openjdk:17-jdk-slim

ENV TZ="Asia/Seoul"

RUN mkdir /app

COPY ./build/libs/api-testrepo-0.0.1-SNAPSHOT.jar /app/api-testrepo-0.0.1-SNAPSHOT.jar

WORKDIR /app

ENTRYPOINT ["java", "-verbose:gc","-XX:+UseConcMarkSweepGC","-jar","api-testrepo-0.0.1-SNAPSHOT.jar"]
