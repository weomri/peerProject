#!/usr/bin/env bash
countD=$(ls -1 -F -A | grep / | wc -l)
countA=$(ls -1 -F -A | wc -l)
countF=$(echo "$countA - $countD" | bc -l)
echo "please guess how many files are in this folder"
read num
function guessAgain {
	echo "please guess again"
        read  num
}
while [[ $num -ne $countF ]]
do
	if [[ $num -gt $countF ]]
	then
		echo "you guessed too high of a number"
	else
                echo "you guessed too low of a number"
	fi
	guessAgain
done
echo "congratulations! you guessed correctly"
