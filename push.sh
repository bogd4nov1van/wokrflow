#!/bin/bash

feature_name=`git rev-parse --abbrev-ref HEAD | cut -d'/' -f 2`

git -C $PWD add . &&
git -C $PWD commit -m "$feature_name: $1" &&
git -C $PWD push