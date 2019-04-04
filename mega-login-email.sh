#!/bin/bash
declare -a EMAILS=($1)

read -s -p "Enter Password for temporary emails: " password

echo "Preventive logout"
mega-logout

for i in "${EMAILS[@]}"
do
	echo "Trying login with username: $i"
	mega-login $i $password

	result=$?

	if [ $result -ne 0 ]; then
		echo "Something went wrong. Aborting steps for this user..."
	else
		#Mega sync or app?
		mega-logout
	fi
done