This example to be used with kubectl commands

Initial pom.xml created by
mvn io.fabric8:vertx-maven-plugin:1.0.7:setup -DvertxVersion=3.4.2 -Ddependencies=web

Assumes use of CDK Minishift
https://developers.redhat.com/products/cdk/download/

mvn clean compile package

java -jar  target/vertx-demo-1.0-SNAPSHOT.jar
or
mvn vertx:run
http://localhost:8080/hello
ctrl-c

minishift ip
minishift oc-env

oc login 192.168.99.101:8443
admin
admin

(note: the admin user is created by the CDK version of Minishift only)

docker build -t burr/myvertx:v1 .

docker images | grep myvertx

docker run -it -p 8080:8080 burr/myvertx:v1

curl http://192.168.99.101:8080/hello

ctrl-c

docker ps | grep myvertx


