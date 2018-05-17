all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game " > README.md
	echo "## Date and time: `date`" >> README.md
	echo "## Number of lines: `wc -l guessinggame.sh | egrep -o "[0-9]+"`" >> README.md	

clean:
	rm README.md
