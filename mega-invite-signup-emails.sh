#!/bin/bash
username=$1
declare -a EMAILS=($2)

read -s -p "Enter Main account password: " password
printf "\n"
read -s -p "Enter temporary emails password to use: " password_temporary

mega-login $username $password

for i in "${EMAILS[@]}"
do
   echo "Inviting user with email: $i"
   mega-invite $i
done

mega-logout

for i in "${EMAILS[@]}"
do
   echo "Signup..."
   mega-signup $i $password_temporary
done