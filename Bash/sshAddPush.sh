#!/usr/bin/bash

#start agent
eval "$(ssh-agent -s)"

#Take SSH Key Name

echo "File found .ssh directory are:"

ls -l ~/.ssh

read -p "Enter SSH Key Name: " sshKey

# Check if name entered
if [ -z ${sshKey} ]; then
    echo "No Key Name Entered"
exit 1
fi
ssh-add ~/.ssh/$sshKey
ssh-add -l
ssh -T git@github.com

wantForce="$1"

if [ wantForce=='f' ]; then
	git push origin master --force-with-lease
	exit 0
fi
git push origin master
exit 0
