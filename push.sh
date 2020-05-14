#!/bin/bash

curr_branch=`git rev-parse --abbrev-ref HEAD`

git -C $PWD add . &&
git -C $PWD commit -m "$curr_branch: $1" &&
git -C $PWD push --set-upstream origin `git rev-parse --abbrev-ref HEAD`