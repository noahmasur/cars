#! /bin/bash
#cars.sh
#Noah Masur
while true
do
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to quit and exit the program"
	read -r choice
	case $choice in 
		1)
			echo "Enter the year of the car: "
			read -r year
			echo "Enter the make of the car: "
			read -r make
			echo "Enter the model of the car: "
			read -r model
			car="$year:$make:$model"
			echo "$car" >> My_old_cars.txt;;
		2)
			sort My_old_cars.txt;;
			
		3)
			echo "Goodbye"
			break
	esac
done	
