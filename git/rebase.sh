#!/bin/bash

git -C $PWD pull origin master &&
git -C $PWD rebase master