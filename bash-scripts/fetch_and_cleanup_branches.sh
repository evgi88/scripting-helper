#!/usr/bin/env bash

while read repo_path; do
   cd $repo_path

   git fetch --prune origin
   git branch --merged | egrep -v "(^\*|master|main)" | xargs git branch -d
done < $1
