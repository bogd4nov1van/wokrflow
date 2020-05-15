#!/bin/bash

count_commit=`git cherry -v master | wc -l | xargs`
`git -C $PWD rebase -i HEAD~$count_commit`