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
