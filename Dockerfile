FROM alpine

RUN apk update && \
    apk upgrade 
RUN apk add openjdk8=8.392.08-r1
RUN apk add maven

# ARG JAR_FILE=build/libs/*.jar
# COPY ${JAR_FILE} app.jar
EXPOSE 8080
# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]