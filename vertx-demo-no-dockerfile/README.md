Leverages the Openshift S2I feature 

mvn clean compile package

oc login -u system:admin

oc project openshift

oc create -f https://gist.githubusercontent.com/tqvarnst/3ca512b01b7b7c1a1da0532939350e23/raw/3869a54c7dd960965f0e66907cdc3eba6d160cad/openjdk-s2i-imagestream.json 

oc login
developer
developer

oc new-project s2idemo

oc new-app redhat-openjdk18-openshift~https://github.com/burrsutter/kube4docker --context-dir=vertx-demo-no-dockerfile -e JAVA_APP_JAR=vertx-no-dockerfile-1.0-SNAPSHOT-fat.jar

oc get services

oc expose service kube4docker

oc get routes

curl kube4docker-kubedemo2b.192.168.99.102.nip.io 


