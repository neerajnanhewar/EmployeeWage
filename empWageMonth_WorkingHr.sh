-#!/bin/bash -x


#variable Decleration
isFullTime=1
isPartTime=0
empWagePerHr=20
totalWork_Day_Month=1
isPresent=1
isAbsent=0
empWork_Hrs=0
#Employee time Check...

emp_TimeCheck=$(( RANDOM%3 ))

	case $emp_TimeCheck in
	$isFullTime)
		echo ">>>>>>>>>>>>>>>>>FULL TIME EMPLOYEE<<<<<<<<<<<<<<<"
		
		while [ $totalWork_Day_Month -ne 20 ]
		do
				emp_present=$((RANDOM%2))

			if [ $emp_present -eq $isPresent ]
				then
						empTotal_Hrs=8
				else
						empTotal_hrs=0
			fi 
				empWork_Hrs=$(($empTotal_Hrs + $empWork_Hrs ))
				((totalWork_Day_Month++))
		done
  		;;
	$isPartTime)
			echo ">>>>>>>>>PART TIME EMPLOYEE<<<<<<<<<<<<<<<<"
	
    		while [ $totalWork_Day_Month -ne 20 ]
			do
            emp_present=$((RANDOM%2))

         if [ $emp_present -eq $isPresent ]
            then
                  empTotal_Hrs=4
            else
                  empTotal_hrs=0
         fi
            empWork_Hrs=$(($empTotal_Hrs + $empWork_Hrs ))
     
			((totalWork_Day_Month++))
			done	
	;;
	*)
					empTotal_Hrs=0
					
	esac

salary=$(( $empWagePerHr * $empWork_Hrs ))
echo " Employee Salary for a month " $salary