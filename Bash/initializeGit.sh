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
        cd "$directoryPath" || { echo "Cannot change to directory $directoryPath"; exit 1; }
        echo "Git is already initialized. Checking status"

        # Checking Git Status

        gitStatus=$(git status --porcelain)


        #Doing action based on status
        if echo "$gitStatus" | grep -q '^??' || echo $gitStatus | grep -q '^M'; then
            echo "There are untracked and modified files."
             # Add or Track Files To Git
            git add .
            # Commit The Tracked Files
            read -p "Enter a commit. If not commit entered than a default commit will be added: " firstCommit
            git commit -m "${firstCommit:-"First Commit"}"
            exit 0
        fi

        echo "Files & Directories are up to date."
        exit 0

    else
        echo "Git will be initialized in $$directoryPath"
        # Initialize Git
        git init

        # Add or Track Files To Git
        git add .

        # Commit The Tracked Files
        read -p "Enter a commit. If not commit entered than a default commit will be added" firstCommit

        git commit -m ${firstCommit:-"First Commit" }
        exit 0
    fi
fi