#!/bin/bash

command='kubectl --namespace=kubedemo scale deployment myvertx --replicas=3'
echo $command 
$command