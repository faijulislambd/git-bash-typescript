#!/usr/bin/bash

# Variable

# Variable Declare
# name="Fuad"
# echo "My name is ${name}"

# #Setting Default Value variable:-defautValue
# echo "My is known as ${alias:-sleepman}"

# # Creating Substring string:index:length
# fullname=faijulislam
# echo "My fist name is ${fullname:0:6} and my last name is ${fullname: -5}"

# #Repalce variable - "string/the string to be replaced/the replaced string"
# echo "My updated user name is ${fullname/faijul/faisal}"


# # User Input

# read -p "Enter Your Name: " myName

# echo "The entered name is is ${myName}"

# # variable do not start with numbers but if the variable is $Number that it's an positional argument


# newName=$1

# echo "New name is ${newName}"

# #$0 get the file path and name

# echo $0

#Condition if else

# read -p "Enter you age: " age

# if [ $age -ge 35 ]; then
#     echo "বাছা তুমি বুইরা"

# # To use || or && you need to enclose the condition it in [[]]
# elif [[ $age -ge 18 && $age -le 34 ]]; then
#     echo "বাছা তুমি জোয়ান"

# else
#     echo "বাছা তুমি বাছুর"
# fi

# Check if a file it in the directory use -f
if [ -f file.txt ]; then
    echo "File found"
else
    echo "No file found"
fi

# Check if a directory it in the directory use -d
if [ -d ./.git ]; then
    echo "Directory found"
else
    echo "No directory found"
fi

# Check if file or directory it in the directory use -e

if [ -e file.txt ]; then
    echo "Directory found"
else
    echo "No file or directory found"
fi

# -x to check if file is executable

if [ -x ./Bash/firstBash.sh ]; then
    echo "User has permission to execute the file"
else
    echo "Permission denied"

fi

# -s to check if a file is empty

if [ -s file.txt ]; then
    echo "File is not empty"
else
    echo "File is empty"

fi

# -s to check if a file or directory is empty

if [ -s file.txt ]; then
    echo "File is not empty"
else
    echo "File is empty"

fi

# -z to check if a variable is empty

if [ -z fullname ]; then
    echo "The variable is empty"
else
    echo "The variable is not empty"

fi

# check and compare file build time with -ot

if [ file.txt -ot newfile.txt ]; then
    echo "file.txt is older"
else
    echo "newfile.txt is older"

fi

# to match with regex the condition will be [[ text =~ regexPatern ]]