#!/bin/bash

curr_branch=$(git rev-parse --abbrev-ref HEAD)

if [ "${curr_branch}" = "master" ]
then
    echo "Branch master can't be deleted"
    exit -1
fi

git -C $PWD checkout -b "backup/${curr_branch}"

git -C $PWD branch -D ${curr_branch}

git -C $PWD checkout master

