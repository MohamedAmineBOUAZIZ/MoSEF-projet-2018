#!/bin/bash
echo "On souhaite la bienvenue à:" $USERNAME
echo "Nous sommes le:" $(date)
cd ~
ls
read -p "Taper le chemin complet d'un répertoire au choix qui vous intéresse aujourd'hui: " Rep
echo "Se postionner dans le répertoire choisi:"
cd $Rep
echo "Afficher le contenu du répertoire choisi:"
ls
echo "Afficher tous les fichiers, d'un répertoire choisi préalablement, qui ont subi des modifications il y a moins d'une semaine:"
find -type f -mtime -7

