#!/usr/bin/env bash
# File: guessinggame.sh
#
#

function list_fic {
	local nb_fic=$(ls -l |grep '^-' |wc -l)
	echo $nb_fic
}

clear
echo -e "Vous devez deviner le nbre de fichiers du rep courant !\n"
reponse="null"

while [[ $reponse -ne nbre_fic=$(list_fic) ]]
 do
  echo -e "Entrez votre pronostique : \c"
  read reponse
  if [[ $reponse -gt $nbre_fic ]]
   then  
    clear; echo -e "Nombre Trop Grand\n"	
  elif [[ $reponse -lt $nbre_fic ]]
   then
    clear; echo -e "Nombre Trop Petit\n"
  fi
 done 

clear; echo -e "Félicitations, c'est trouvé !!\n" 
echo "Le nombre de fichiers est de: "$nbre_fic




