#! /bin/bash
# cars.sh
# Dylan McIntosh

userInput="0"

while [ $userInput -ne 3 ]
do
	echo "1) Enter a new car"
	echo "2) Display the list of cars"
	echo "3) Quit"
	read -r userInput
	case $userInput in
		1)
			echo "Enter the year of the car:"
			read -r year
			echo "Enter the make of the car:"
			read -r make
			echo "Enter the model of the car:"
			read -r model
			car="$year:$make:$model"
			echo "$car" >> "My_old_cars"
		;;
		2)
			sort "My_old_cars"			
		;;
		3)
			echo "Goodbye"
		;;
		*)
			echo "Not a valid option"
		;;
	esac
done
