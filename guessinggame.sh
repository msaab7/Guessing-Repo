#!/usr/bin/env bash
function guessinggame {
numberoffiles=$(ls -l | wc -l)
echo "How many files are in the current directory?"
read userinput
while [[ $userinput -ne $numberoffiles ]]
do
if [[ $userinput -lt $numberoffiles ]]
then 
echo "The number is too small, enter a larger number:"
read userinput
elif [[ $userinput -gt $numberoffiles ]]
then 
echo "The number is too big, enter a smaller number:"
read userinput
else
echo "Input is not valid"
fi
done
echo "Congratulations, TRUUUUUUUUUUUUE Value"
echo "The exact number of files is: " $numberoffiles 
}
