#!/bin/bash

command="kubectl get namespaces"
echo $command
$command

# oc get projects