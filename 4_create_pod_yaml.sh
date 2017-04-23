#!/bin/bash
command="kubectl --namespace=kubedemo create -f kubedemo-pod.yaml"
echo $command
$command