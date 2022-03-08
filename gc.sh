#!/bin/bash
read -p "Type a BIR task value: " bir_value
read -p "Type a commit message: " commit_message

commit="\"BIR-$bir_value: $commit_message\""
printf "\ngit commit -m $commit\n"

read -p "Do you want to commit this message? [Y/n]: " op

echo $op

if [[ -z $op ]] || [[ $op == 'y' ]] || [[ $op == 'Y' ]]; then 
	git commit -m "$commit"
	exit 0
fi

printf "closing program...\n"
