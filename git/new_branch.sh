#!/bin/bash

git -C $PWD checkout master && 
git -C $PWD pull && 
git -C $PWD checkout -b "$1/$2"