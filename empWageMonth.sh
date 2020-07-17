#!/bin/bash -x


#variable Decleration
isFullTime=1
isPartTime=0
empWagePerHr=20
totalWork_Day_Month=20
isPresent=1
isAbsent=0
empWork_Hrs=0
#Employee time Check...

emp_TimeCheck=$(( RANDOM%3 ))
#emp_present=$((RANDOM%2))

	case $emp_TimeCheck in
	$isFullTime)
		for (( day=1; day<=$totalWork_Day_Month; day++))	
		do
				emp_present=$((RANDOM%2))

			if [ $emp_present -eq $isPresent ]
				then
						empTotal_Hrs=8
				else
						empTotal_hrs=0
			fi 
				empWork_Hrs=$(($empTotal_Hrs + $empWork_Hrs ))
		done
  ;;
	$isPartTime)
		for (( day=1; day<=$totalWork_Day_Month; day++))
     	do
            emp_present=$((RANDOM%2))

         if [ $emp_present -eq $isPresent ]
            then
                  empTotal_Hrs=4
            else
                  empTotal_hrs=0
         fi
            empWork_Hrs=$(($empTotal_Hrs + $empWork_Hrs ))
      done
	;;
	*)
					empTotal_Hrs=0
	esac

salary=$(( $empWagePerHr * $empWork_Hrs ))
echo " Employee Salary for a month " $salary


