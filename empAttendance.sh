#!/bin/bash -x

# Employee Attandance check

isPresent=1
isAbsent=0
attandance=$(( RANDOM%2 ))

	if [ $attandance -eq $isPresent ]
	then
			echo " Employee is Present "
	elif [ $attandance -eq $isAbsent ]
	then
			echo " Employee is Absent "
	else
			exit
	fi
