#!/usr/bin/bash

#To initialize and do first commit in git

read -p "Please enter the path you want git to be initialize: " directoryPath


# Check if variable is emplty
if [ -z ${directoryPath} ];then
    echo "No path entered. Exiting..."
    exit 1
else
    echo "Git is being initialize in ${directoryPath}"
    if [ -d ./.git ]; then
        echo "Git is already initialized. Checking status"

        # Checking Git Status

        gitStatus=$(git status --porcelain)

        #Doing action based on status

        if [[ $gitStatus || ${grep -q '^??'} || ${grep -q '^M'} ]]; then
            echo "There are untracked and modified files."
             # Add or Track Files To Git
            git add .
            # Commit The Tracked Files
            read -p "Enter a commit. If not commit entered than a default commit will be added: $/n" firstCommit
            git commit -m ${firstCommit:-"First Commit"}
        else
            echo "Files & Directories are up to date"
        fi

    else
        echo "Git will be initialized in $$directoryPath"
        # Initialize Git
        git init

        # Add or Track Files To Git
        git add .

        # Commit The Tracked Files
        read -p "Enter a commit. If not commit entered than a default commit will be added" firstCommit

        git commit -m ${firstCommit:-"First Commit" }

    fi
exit 0
fi