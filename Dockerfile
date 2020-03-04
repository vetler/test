FROM gradle:6.2.1 AS builder
RUN gradle build --no-daemon 
ARG APPJAR=build/libs/*.jar
COPY ${APPJAR} app.jar
RUN jar -xf ./app.jar

FROM openjdk:8-jre-alpine
VOLUME /tmp
ARG DEPENDENCY=target/dependency
#COPY --from=builder ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","net.roeim.test.FooApplication"]

