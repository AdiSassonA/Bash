#!/usr/bin/env bash
#create an array

read -p "enter number: " num
for i in $num; do
	if ! [[ $i =~ '^[0-9]+$' ]] ; then
   		echo "error: $i is not a number" ; exit 1
	fi
	while [[ $i -lt 0 ]]; do
		echo "error: $i is a negative number" ; exit 1
	done
	if [[ $i -gt 0 ]]; then
		arr+=($i)
	fi
done
max=${arr[0]}
min=${arr[0]}
len=${#arr[@]}
# Loop through all elements in the array
for y in "${arr[@]}"
do
	sum=$(( $sum + $y ))
    # Update max if applicable
	if [[ "$y" -gt "$max" ]]; then
        max="$y"
	fi

    # Update min if applicable
    	if [[ "$y" -lt "$min" ]]; then
        min="$y"
    	fi
done
#calculate the average
avg=$(( $sum / $len ))
# Output results:
echo "Max is: $max"
echo "Min is: $min"
echo "Avg is: $avg"
