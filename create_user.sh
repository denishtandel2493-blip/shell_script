#!/bin/bash




echo "************ Creation of User Started ************"

read -p "enter the username:" username
read -p "enter the password:" password

sudo useradd -m "$username"

echo "$username:$password" | sudo chpasswd

echo "********** Creation of User Completion **********"

sudo userdel $username

echo "********** Deletio of User Completion ********"

cat /etc/passwd | grep $username | wc

echo "as wc is 0 the user is deleted"
