#!/bin/bash

git -C $PWD add . &&
git -C $PWD commit -m "$1" &&
git -C $PWD push --set-upstream origin `git rev-parse --abbrev-ref HEAD`