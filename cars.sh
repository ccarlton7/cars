#!/bin/bash
#cars.sh
#Chris Carlton

x=1
while [ "$x" -eq "1" ]
do
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit and exit the program"
	read var

	case "$var" in
		"1") echo "What year is the car"
		read year 
		echo "What is the make of the car"
		read make
		echo "What is the model of the car"
		read model
		result="$year:$make:$model"
		echo "$result" >> My_old_cars;;

		"2")sort My_old_cars
 		echo "My_old_cars";;

		"3") echo "Goodbye!"
		x=0;;
		
		*)
	esac
done
