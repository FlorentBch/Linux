#! bin/bash

cd /home/fbuchet/Téléchargements/

mkdir -p Downloads/{Autre,Image,Music,Video}

cd /home/fbuchet/Téléchargements/Downloads

echo -e "Ceci est le fichier de Téléchargement.\nMerci de respecter l'organisation du répertoire.\nAttention aux virus.\nLe dossier téléchargement est prêt." > ReadMe.txt

grep -i "Téléchargement" ReadMe.txt # -i = Insensible à la casse

touch /home/fbuchet/Téléchargements/Downloads/Music/music.mp3