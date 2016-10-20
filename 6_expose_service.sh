#!/bin/bash

command='kubectl --namespace=kubedemo expose rc myvertx --type=LoadBalancer'
echo $command
$command