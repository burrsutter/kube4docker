Kubernetes Demo

Prerequisites:
* minishift (from github)
* maven (from Apache, using paths.d trick on Mac)
* docker (instead via Docker CE)
* kubectl (installed via brew)
* oc (installed via minishift)


Download minishift RC2:
https://github.com/minishift/minishift/releases/tag/v1.0.0-rc.2

./minishift version
Minishift version: 1.0.0-rc.2

./minishift config set memory 7000

./minishift config set cpus 2

./minishift config set disk-size 20g

./minishift config set vm-driver virtualbox

./minishift config view

./minishift addons install --defaults

./minishift addons enable cluster-admin

./minishift start

put oc in the PATH
export PATH=~/.minishift/cache/oc/v1.5.0-rc.0/:$PATH

# make your developer a cluster-admin
oc login -u system:admin
oc adm policy add-cluster-role-to-user cluster-admin admin --as=system:admin

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


Now follow steps 0 to 13




