#!/bin/bash

branch_name=`git rev-parse --abbrev-ref HEAD`
feature_name=`$branch_name | cut -d'/' -f 2`

git -C $PWD add . &&
git -C $PWD commit -m "$feature_name: $1" &&
git -C $PWD push --set-upstream origin $branch_name