#!/usr/bin/env bash

current_branch=$(git rev-parse --abbrev-ref HEAD)

# Get the commit hashes between master and feature_branch
# The other paranthesis convert the string into an array splitting on space
commit_hashes=(  $(git log master..$current_branch --format="%H")  )

# Loop through each commit and print the commit message and description
for commit_hash in $commit_hashes; do
    # Get the commit message and description
    commit_message=$(git log -1 --format="%s" $commit_hash)
    commit_description=$(git log -1 --format="%b" $commit_hash)

    # Print the commit message and description
    echo "$commit_message\n"
    echo "$commit_description\n"
    echo "------------------------------------"
done | pbcopy

