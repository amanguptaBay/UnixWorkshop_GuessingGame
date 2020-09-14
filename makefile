README.md:
	touch README.md
	echo "UnixWorkshop_GuessingGame" >> README.md
	date +"%D %T" >> README.md
	cat guessinggame.sh | wc -l | xargs >> README.md

clean:
	rm README.md
