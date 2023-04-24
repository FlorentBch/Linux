# Scripting Bash sous Linux

## Installation de Visual Studio Code

Aller sur le site, télécharger le dossier et lancer la commande d'installation :

```bash
sudo apt install VS.deb
```

## Premier script de création d'arborescence et de fichier texte

```bash
#! bin/bash

# On se déplace dans le dossier
cd /home/fbuchet/Téléchargements/ 

# On céer notre arborescence -p sert a notifier les liens de parentés
mkdir -p Downloads/{Autre,Image,Music,Video} 

cd /home/fbuchet/Téléchargements/Downloads

# Pas besoin de créer le fichier en amont car on utilise le chevron.
echo -e "Ceci est le fichier de Téléchargement.\nMerci de respecter l'organisation du répertoire.\nAttention aux virus.\nLe dossier téléchargement est prêt." > ReadMe.txt # -e sert a inserer les \n pour le retour chariot

# On cherche dans le dossier ReadMe.txt les mots Téléchargements
grep -i "Téléchargement" ReadMe.txt # -i = Insensible à la casse

#Simple création de fichier
touch /home/fbuchet/Téléchargements/Downloads/Music/music.mp3
```
