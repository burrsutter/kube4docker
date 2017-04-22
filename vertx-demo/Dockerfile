FROM fabric8/java-jboss-openjdk8-jdk:1.2.3

ENV JAVA_APP_JAR vertx-hello-project-1.0-SNAPSHOT-fat.jar
ENV JAVA_OPTIONS -Xmx256m 

EXPOSE 8080

RUN chmod -R 777 /deployments/

ADD target/$JAVA_APP_JAR /deployments/


## before Fabric8
# FROM openjdk:8

# ENV JAVA_APP_JAR vertx-hello-project-1.0-SNAPSHOT-fat.jar

# EXPOSE 8080

# ADD target/$JAVA_APP_JAR /app/

# RUN chmod 777 /app/

# WORKDIR /app/
# ENTRYPOINT ["sh", "-c"]
# CMD ["java -jar $JAVA_APP_JAR"]