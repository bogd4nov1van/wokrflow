#!/bin/bash

if [ $# -eq 0 ]
  then
    docker rm -f $(docker ps -aq)
else
    docker rm -f $1
fi