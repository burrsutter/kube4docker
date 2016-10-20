#!/bin/bash

command='kubectl --namespace=kubedemo scale rc myvertx --replicas=3'
echo $command 
$command