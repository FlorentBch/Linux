# Découverte de Linux sous distrib Debian

## Instructions de bases / Manipulation du système de fichier

1. Aller dans le dossier Documents.

   ```bash
   cd /home/fbuchet/Documents
   ```

2. Donner le chemin absolu actuel.

   ```bash
    pwd #Retourne le chemin absolu : /home/fbuchet/Documents
   ```

3. Créer 4 dossiers : IT, Communication, RH, Marketing

    ```bash
    mkdir IT Communication RH Marketing
    ```

4. Aller dans le dossier RH et créer un dossier Projet

    ```bash
    mkdir RH/Projet
    ```

5. A l’aide d’un éditeur de fichier créer trois fichiers Projet_IT, Projet_Marketing,
Projet_Communication. Chaque fichier doit contenir la phrase suivante : Ce fichier est composé du
(nom du pole). Ex : Ce fichier est composé du projet Communication

    ```bash
    echo "Ce projet est composé du projet Communication" > Projet_Communication
    echo "Ce projet est composé du projet Marketing" > Projet_Marketing
    echo "Ce projet est composé du projet IT" > Projet_IT
    ```

6. Dans le dossier Documents, faire une copie complète du dossier RH que l’on nommera copy_RH.

   ```bash
    cp -r RH Copy_RH
   ```

7. Copier uniquement les dossiers et les fichiers du RH vers le dossier Marketing.

   ```bash
    cp -R RH/* Marketing/
   ```

8. Renommer les fichiers du dossier Marketing selon la norme suivante : Ex : Projet_IT devient m_Projet_IT

   ```bash
    mv Projet_Communication m_Projet_Communication
    mv Projet_Marketing  m_Projet_Marketing
    mv Projet_IT  m_Projet_IT
   ```

9. Dans le dossier Marketing, créer un dossier Backup.

   ```bash
    cd ../../Marketing
    mkdir Backup 
   ```

10. Déplacer les fichiers du dossier Marketing dans le dossier Backup. Donner le chemin absolu pour arriver dans ce dossier.

    ```bash
    mv /home/fbuchet/Documents/Marketing/* /home/fbuchet/Documents/Marketing/Backup
    pwd #/home/fbuchet/Documents/Marketing/Backup 
    ```

11. Aller dans le dossier Backup, donner le chemin relatif permettant d’aller dans le dossier Projet de Marketing.

    ```bash
    cd /home/fbuchet/Documents/Marketing/
    ```

12. Supprimer complètement le dossier Marketing.

    ```bash
    rm -r Marketing
    ```

13. Revenir à la racine du home de l’utilisateur et donner la commande réalisée.

    ```bash
    cd /home
    ```

## PARTIE 1 : Introduction

1. Faire une mise à jour du cache système.

    ```bash
    apt-get update
    ```

2. Faire une mise à jour des programmes du système

    ```bash
    apt-get udgrade
    ```

3. Trouver le fichier contenant les URL de dépôts Debian.

    ```bash
    nano /etc/apt/sources.list
    ```

4. Rechercher sur les paquets main, contrib, non-free.

    ```bash
    apt-cache search main && apt-cache search contrib && apt-cache search non-free
    ```

## PARTIE 2 : Les archives

1. Reproduire l'arborescence suivante : Archive |--- dossierA | |--- f1_dossierA | |--- f2_dossierA | |--- f3_dossierA | |--- dossierB | |--- f1_dossierB | |---
f2_dossierB | |--- f3_dossierB | |--- f4_dossierB | |--- dossierC |--- f1_dossierC |--- f2_dossierC

    ```bash
    mkdir -p {DossierA/{Dossier1A,Dossier2A,Dossier3A},DossierB/{Dossier1B,Dossier2B,Dossier3B},DossierC/{Dossier1C,Dossier2C,Dossier3C}}
    ```

2. Créer un fichier compressé de Archive en tar _archive.tar

     ```bash
    tar -cvf Exercice_Archive.tar Exercice_Archive
    ```

3. Lire le contenu pour s'assurer d'avoir bien pris en compte tous les fichiers

    ```bash
    tar -tf Exercice_Archive.tar 
    ```

4. Renommer Archive en old_Archive

    ```bash
    mv Exercice_Archive Old_Archive
    ```

5. Décompresser le tar_archive.tar

    ```bash
    tar -xvf Exercice_Archive.tar
    ```

6. Quelle commande permet de vérifier le contenu.

    ```bash
    tree
    ```

## PARTIE 3 : Gestion des paquets

1. Expliquer la commande apt search package_name

    La commande "apt search package_name" permet de rechercher des paquets Debian correspondant au nom spécifié dans "package_name". Voici comment cette commande fonctionne :

    - Ouvrez un terminal en tant que superutilisateur ou utilisez la commande "su" pour devenir superutilisateur.

    - Tapez la commande suivante, en remplaçant "package_name" par le nom du paquet que vous souhaitez rechercher :

        ```bash
        apt search package_name
        #Cette commande va effectuer une recherche dans les dépôts de paquets disponibles sur votre système Debian pour trouver les paquets correspondant au nom spécifié.
        ```

    - Si des paquets correspondant à votre recherche sont disponibles, vous devriez voir une liste de noms de paquets et de descriptions

2. Expliquer la commande apt show package_name

    La commande "apt show package_name" permet d'afficher des informations détaillées sur un paquet Debian spécifique. Voici comment cette commande fonctionne :

    - Ouvrez un terminal en tant que superutilisateur ou utilisez la commande "su" pour devenir superutilisateur.

    - Tapez la commande suivante, en remplaçant "package_name" par le nom du paquet que vous souhaitez afficher les informations :

    ```bash
    apt show package_name
    # Cette commande va afficher des informations détaillées sur le paquet Debian spécifié, y compris la version actuelle, la description, les dépendances, les informations de l'auteur et plus encore.
    ```

    - Si le paquet n'est pas installé sur votre système, vous verrez également des informations sur la disponibilité du paquet dans les dépôts de paquets disponibles sur votre système Debian.

    - Vous pouvez utiliser cette commande pour obtenir des informations sur un paquet Debian avant de l'installer ou pour déterminer si vous avez besoin d'une mise à jour pour un paquet déjà installé sur votre système.

3. Expliquer l'utilité du paquets tree

   - Il permet de voir l'arborescence

## Gestion des utilisateurs

### Commandes sur les users

- Afficher quel utilisateur je suis : whoami

- Donne les informations sur l’utilisateur en cours (uid, gid) : id

- Ajouter un utilisateur : adduser utilisateur

- Modifier un utilisateur : usermod -option(s) utilisateur

- Supprimer un utilisateur : deluser utilisateur

- Supprimer un utilisateur avec son répertoire personnel : deluser -r utilisateur

- Ajouter un(des) groupe(s) : addgroup groupe1 groupe2 groupe3

- Supprimer un groupe : delgroup groupe

- Ajouter un utilisateur à un groupe : adduser utilisateur groupe

- Modifier le mot de passe d’un utilisateur : passwd utilisateur

- Désactiver / réactiver un compte : passwd -l utilisateur / passwd -u utilisateur

- Information sur les conditions d’expiration du mot de passe : chage -l utilisateur

- Regarder l’expiration d’un mot de passe et s’il a été changé : chage -l utilisateur

- Demander un nouveau mot de passe pour un utilisateur dans 5 jours : chage -M 5 utilisateur

## PARTIE 1 : Manipulation user et group

1. Création de 3 groupes : formateur, etudiant, administration

    Il faut absolument utiliser sudo sinon ca ne fonctionne pas.

    ```bash
        sudo addgroup formateur
        sudo addgroup etudiant
        sudo addgroup administration
    ```

2. Création de 5 utilisateurs avec création de leurs répertoire home : u1, u2, u3, u4, u5

    ```bash
        sudo useradd -m u1
        sudo useradd -m u2
        sudo useradd -m u3
    ```

3. Placer l'utilisateur u3 dans le groupe etudiant

    ```bash
        gpasswd -a u3 etudiant
    ```

4. Placer les utilisateurs u1 et u2 dans le groupe formateur

    ```bash
        gpasswd -a u1 formateur
        gpasswd -a u2 formateur
    ```

5. Placer les utilisateurs u4, u5 dans le groupe administration

   ```bash
    passwd -a u4 administration
    passwd -a u5 administration
   ```

6. Utiliser la commande getent pour verifier l'ajout dans les différents groupes

   ```bash
   getent group administration
   ```

7. Verifier à l'aide du fichier /etc/passwd le terminal utilisé par les nouveaux utilisateurs ?

    ```bash
    nano /etc/passwd
    ```

8. Modifier le terminal utilisé par les utilisateurs créés par /bin/bash

    ```bash
    sudo usermod --shell /bin/bash u1
    sudo usermod --shell /bin/bash u2
    sudo usermod --shell /bin/bash u3
    sudo usermod --shell /bin/bash u4
    sudo usermod --shell /bin/bash u5
    ```

9. Acceder a la console de l'utilisateur u2, verifier l'utilisateur connecté et créer un fichier nommé test
dans le repertoire /home/u2

    ```bash
    cd /home/u2
    mkdir test
    ```

10. Verifier le groupe propriétaire du fichier et modifier celui-ci par le groupe root

    ```bash
    ls -l
    sudo chgrp root test
    ```

11. Modifier le groupe et l'utilisateur propriétaire par root:root avec la commande chown sur le fichier test

    ```bash
    sudo chown root:root test
    ls -l
    ```

12. Mettre l'utilisateur u1 en mode sudo

    ```bash

    ```

13. Supprimer les utilisateurs créés
14. Supprimer les groupes crées