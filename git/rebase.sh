#!/bin/bash

curr_branch=$(git rev-parse --abbrev-ref HEAD)

git -C $PWD checkout master
git -C $PWD pull
git -C $PWD checkout $curr_branch
git -C $PWD rebase master