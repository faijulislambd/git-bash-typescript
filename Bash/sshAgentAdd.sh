#!/usr/bin/bash

#start agent
eval "$(ssh-agent -s)"

#Take SSH Key Name
read -p "Enter SSH Key Name: " sshKey

# Check if name entered
if [ -z ${sshKey} ]; then
    echo "No Key Name Entered"
else
    ssh-add ~/.ssh/$sshKey
    ssh-add -l

fi