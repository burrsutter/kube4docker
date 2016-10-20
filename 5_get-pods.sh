#!/bin/bash

command="kubectl get pods --namespace=kubedemo"
echo $command
$command