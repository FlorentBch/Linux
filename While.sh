#! /bin/bash

echo "Pour sortir, veuillez renseigner : Je veux sortir !"
read usrString
Phrase="Je veux sortir !"
while [ "$usrString" != "$Phrase" ]
do
    echo "Mauvaise réponse. Pour sortir, veuillez renseigner : Je veux sortir !"
    read usrString
done

echo "Au revoir !"


echo "Pour sortir, veuillez renseigner : Je veux sortir !"
read usrString
Phrase="Je veux sortir !"
until [ "$usrString" = "$Phrase" ]
do
    echo "Mauvaise réponse. Pour sortir, veuillez renseigner : Je veux sortir !"
    read usrString
done

echo "Au revoir !"