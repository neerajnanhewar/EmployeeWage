#!/bin/bash -x


#variable Decleration
isFullTime=1
isPartTime=0
empWagePerHr=20
#Employee time Check...

emp_TimeCheck=$(( RANDOM%3 ))

	case $emp_TimeCheck in
	$isFullTime)
					empTotal_Hrs=8
	;;
	$isPartTime)
					empTotal_Hrs=4
	;;
	*)
					empTotal_Hrs=0
	esac
salary=$(( $empWagePerHr * $empTotal_Hrs ))
 echo " Employee Salary is " $salary

