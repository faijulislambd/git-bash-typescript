#!/usr/bin/bash

# Variable Declare
name="Fuad"
echo "My name is ${name}"

#Setting Default Value variable:-defautValue
echo "My is known as ${alias:-sleepman}"

# Creating Substring string:index:length
fullname=faijulislam
echo "My fist name is ${fullname:0:6} and my last name is ${fullname: -5}"

#Repalce variable - "string/the string to be replaced/the replaced string"
echo "My updated user name is ${fullname/faijul/faisal}"
