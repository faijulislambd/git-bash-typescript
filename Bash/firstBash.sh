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

read -p "Enter you age: " age

if [ $age -ge 35 ]; then
    echo "বাছা তুমি বুইরা"

# To use || or && you need to enclose the condition it in [[]]
elif [[ $age -ge 18 && $age -le 34 ]]; then
    echo "বাছা তুমি জোয়ান"

else
    echo "বাছা তুমি বাছুর"
fi