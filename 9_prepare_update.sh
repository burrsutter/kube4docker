#!/bin/bash

command='docker build -t burr/myvertx:v2 .'
echo $command

cd vertx-demo
$command
cd ..
