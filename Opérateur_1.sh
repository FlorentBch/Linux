#! bin/bash

read nbr
if [ $nbr -eq 0 ] 
then
    echo "Votre nombre est égale à 0"
elif [ $nbr -gt 0 ]
then
    echo "Votre nombre est positif"
elif [ $nbr -lt 0 ]
    echo "Votre chiffre est négatif"
else
    echo "Ceci n'est pas un nombre"
fi

