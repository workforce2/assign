echo "Program starting"
function guess {
	ls -l | grep ^- | wc -l
}


line=$(guess) 

echo -n "How many files are there in current directory: "

read response

while [[ $response -ne $line ]]
do 
	if [[ $response -lt $line ]]
	then
		echo -n "Input too low, try again: "
	elif [[ $response -gt $line ]]
	then
		echo -n "Input too high, try again: "
	fi
	read response
done

if [[ $response -eq $line ]]
then
	echo "Congratulation, correct entry"
fi

echo "programme ended"
