#!/usr/bin/bash

#start agent
eval "$(ssh-agent -s)"

#Take SSH Key Name
read -p "Enter SSH Key Name: " sshKey

# Check if name entered
if [ -z ${sshKey} ]; then
    echo "No Key Name Entered"
    exit 1
else
    ssh-add ~/.ssh/$sshKey
    ssh-add -l
    # Check if git connection successfull
    ssh -T git@github.com
    # Push after agent is sure
    git push origin master --force-with-lease
    exit 0
fi
