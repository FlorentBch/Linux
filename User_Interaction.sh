#! bin/bash

#Exercice 1
select Date in J/M/A M/A/J A/J/M
do
echo "Vous avez choisi le format de date suivant: $Date"
break
done

#Exercice 2

echo "Entrez votre login, vous êtes limité à 5 caractères"
read -n 5 login #Limite les caractères à 5
echo -e "\nEntrez maintenant votre mots de passe, vous avez 10 secondes"
read -s -t 10 mdp #Limite le temps à 10 secondes et obstrue la saisie
echo -e "Login: $login\nMot de passe: $mdp"
