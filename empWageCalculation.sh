#!/bin/bash -x

# Employee Attandance check
#variable Decleration
isPresent=1
isAbsent=0
isFullTime=0
empWagePerHr=20
fullTime_empHr=8
#Addendance Check...

attandance=$(( RANDOM%2 ))

	if [ $attandance -eq $isPresent ]
	then
			echo " Employee is Present "
			empCheck=$((RANDOM%2))
		   	if [ $empCheck -eq $isFullTime ]
				then
						salary=$(( $empWagePerHr * $fullTime_empHr  ))
						echo "Salary = " $salary
				else
						echo "Employee is Part time"
				fi
	elif [ $attandance -eq $isAbsent ]
	then
			echo " Employee is Absent "
	else
			exit
	fi
