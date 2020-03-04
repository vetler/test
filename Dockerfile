FROM gradle:6.2.1 AS builder
COPY . .
RUN gradle build --no-daemon 

FROM openjdk:8-jre-alpine
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY --from=builder ${DEPENDENCY}/build/libs/*.jar /app
ENTRYPOINT ["java","-cp","app:app/*","net.roeim.test.FooApplication"]

