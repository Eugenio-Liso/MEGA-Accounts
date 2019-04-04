#!/bin/bash
declare -a EMAILS=($1)

read -s -p "Enter Password: " password

for i in "${EMAILS[@]}"
do
   echo "Trying login with username: $i"
   mega-login $i $password
   mega-logout
done