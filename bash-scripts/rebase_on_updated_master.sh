#!/usr/bin/env bash

update_master_and_rebase() {
	git switch master
	git pull
	git checkout - # checkout last branch. https://www.w3docs.com/snippets/git/how-to-checkout-the-previous-branch.html
	git rebase master
}

# Entry point
if [[ $# -eq 0 ]] then
	update_master_and_rebase
	echo "test 1"
elif [[ $# -eq 1 ]] then
	if [[ $1 == "-p" ]] then
		update_master_and_rebase
		git push
		echo "test 2"
	elif [[ $1 == "-fp" ]] then
		update_master_and_rebase
		git push -f
		echo "test 3"
	else
		echo "Usage: rebase_on_updated_master. Optional parameters: -p or -fp."
		echo "test 4"
	fi	
else
	echo "Usage: rebase_on_updated_master. Optional parameters: -p or -fp."
	echo "test 5"
fi
