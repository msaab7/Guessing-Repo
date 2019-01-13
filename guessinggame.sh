#!/usr/bin/env bash


function small {
echo "Your number is too small"
}

function big {
echo "Your number is too big"
}

numberoffiles=$(ls -al | grep ^- | wc -l)
echo "How many files are in the current directory?"
read userinput

while [[ $userinput -ne $numberoffiles ]]
do
	if [[ ! $userinput =~ [0-9] ]]
	then
		echo "Your input is invalid. Input should an Integer"
		read userinput
	elif [[ $userinput -lt $numberoffiles ]]
	then 
		small
		read userinput
	elif [[ $userinput -gt $numberoffiles ]]
	then 
		big
		read userinput
	fi
done

echo "Congratulations, TRUE Value"
echo "The exact number of files is: " $userinput

