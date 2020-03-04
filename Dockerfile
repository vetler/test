FROM gradle:6.2.1 AS builder
COPY . .
RUN gradle build --no-daemon 

FROM openjdk:8-jre-alpine
VOLUME /tmp
COPY --from=builder build/libs/*.jar /app
ENTRYPOINT ["java","-cp","app:app/*","net.roeim.test.FooApplication"]

