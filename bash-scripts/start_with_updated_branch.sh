#!/usr/bin/env bash

if [[ $# -eq 0 ]]
then
	echo "Usage: start_with_new_and_updated_branch {branch_name}"
	exit 1
fi

branch_name=$1

if git stash save "Uncommited changes from before starting a new branch"; then
  echo "Local changes stashed"
else
  echo "No local changes to save"
fi

git switch master
git pull
git branch -D $branch_name 
git switch -c $branch_name
