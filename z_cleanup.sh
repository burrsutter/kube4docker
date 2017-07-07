#!/bin/bash

# in some cases you can just delete the deployment
command1="kubectl delete deploy/myvertx --namespace=kubedemo"
echo $command1
$command1

# in other cases you might wish to wipe the whole namespace
echo 'kubectl delete -f ./kubedemo-namespace.yaml'
kubectl delete -f ./kubedemo-namespace.yaml