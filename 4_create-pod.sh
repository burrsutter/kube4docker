#!/bin/bash
command="kubectl --namespace=kubedemo run myvertx --image=burr/myvertx:v1 --port=8080"
echo $command
$command