# Makefile for Guessing Game Project

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	wc -l guessinggame.sh | awk '{print $$1}' >> README.md
