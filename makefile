all: README.md

README.md:
	echo "# Guessing Game " > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+">> README.md	

clean:
	rm README.md
