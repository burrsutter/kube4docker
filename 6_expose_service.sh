#!/bin/bash

command='kubectl --namespace=kubedemo expose deployment --port=8080 myvertx --type=LoadBalancer'
echo $command
$command