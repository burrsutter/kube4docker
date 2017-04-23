#!/bin/bash
command="kubectl --namespace=kubedemo create -f kubedemo-deployment.yaml --record --validate=false"
echo $command
$command