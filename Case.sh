# !/bin/bash

read -p "Choisissez une option : r pour démarrer, s pour arrêter, d pour supprimer, h pour afficher l'aide disponible: " option

case $option in
    r)
        echo "Le programme démarre"
        ;;
    s)
        echo "Le programme s'arrête"
        ;;
    d)
        echo "Le programme se supprime"
        ;;
    h)
        echo "Le programme affiche l'aide disponible"
        ;;
    *)
        echo "Cette option n'existe pas"
        ;;
esac