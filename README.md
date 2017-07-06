# Kubernetes Demo

### Prerequisites:
* CDK minishift 
* mvn (from Apache, using paths.d trick on Mac)
* docker (instead via Docker CE)
* kubectl (installed via brew)
* oc (installed via minishift)


### Download CDK minishift:
https://developers.redhat.com/products/cdk/download/

./minishift version

Minishift version: 1.0.0+4f8cb6d

CDK Version: 3.0.0-2

./minishift config set memory 7000

./minishift config set cpus 2

./minishift config set disk-size 20g

./minishift config set vm-driver virtualbox

./minishift config view

./minishift start

put oc in the PATH

note: this comes from "minishift oc-env"

export PATH=~/.minishift/cache/oc/v1.5.0-rc.0/:$PATH



oc login -u admin -p admin

oc get projects

brew install kubernetes-cli

kubectl get namespaces

eval $(./minishift docker-env)

or ./minishift docker-env and 

export DOCKER_TLS_VERIFY="1"

export DOCKER_HOST="tcp://192.168.99.101:2376"

export DOCKER_CERT_PATH="/Users/burr/.minishift/certs"

export DOCKER_API_VERSION="1.24"

docker images

docker ps

Console:

./minishift console --url

https://192.168.99.102:8443

admin

admin

https://screencast.com/t/vglaeMHHbqW


Now follow scripts 0 to 13


###
vertx-demo-no-dockerfile - demonstrates how to use the S2I solution which means you do not need to provide a Dockerfile

vertx-demo-fabric8 - uses the Maven plugin, no Dockerfile

boot-demo - the same endpoint with Spring Boot, using F8 plugin

swarm-demo - the same endpoint with WildFly Swarm, using F8 plugin


