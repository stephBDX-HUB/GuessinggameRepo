# Makefile

readme:
	echo "# GessingGame Projet" > README.md
	echo "Execution de make à : **`date`**" >> README.md
	echo "Guessinggames.sh, Nbre lignes de code : **\c" >> README.md
	cat guessinggame.sh |grep -v "#" |grep -v "^$$" |wc -l |sed 's/$$/**/' >> README.md

