FROM openjdk:8

ENV JAVA_APP_JAR vertx-hello-project-1.0-SNAPSHOT-fat.jar

EXPOSE 8080

ADD target/$JAVA_APP_JAR /app/
# ADD src/openshift /app/

RUN chmod 777 /app/

WORKDIR /app/
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar $JAVA_APP_JAR"]
