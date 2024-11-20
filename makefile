# Makefile

readme:
	echo "# GessingGame Projet" > README.md
	echo "Execution du make le: **`date`** \n" >> README.md
	echo "Nbre de lignes de code dans Guessinggames.sh: **\c" >> README.md
	cat guessinggame.sh |grep -v "#" |grep -v "^$$" |wc -l |sed 's/$$/**/' >> README.md

