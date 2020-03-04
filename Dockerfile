FROM openjdk:8-jre-alpine
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY --from=builder ${DEPENDENCY}/build/libs/*.jar /app/lib
ENTRYPOINT ["java","-cp","app:app/lib/*","net.roeim.test.FooApplication"]
