Mohamed Amine BOUAZIZ : Projet Linux Décemebre 2018 MasterMoSEF2018

Ce fichier va constituer un manuel permettant à l'utlisateur de comprendre comment modifier et exécuter le script qu'on a crée pour le Projet
Linux.A travers l'éxécution du script l'utlisateur va pouvoir identifier les fichiers, d'un répertoire choisi préalablement ,qui ont subi des modifications il y a moins d'une semaine.
Pour arriver à ce résultat lors de l'éxécution du script il faut suivre les étapes ci-dessous:

1)La première étape consiste à forker le dépot afin de transférer le contenu du répertoire MoSEF-Projet-2018 vers mon répertoire personnel: pour le faire il faut se rendre sur la page GIthub d'Amadou Balde (via le lien envoyé par mail) et cliquer sur le bouton "Fork" qui se trouve en haut et à droite

2)La deuxième étape consiste à cloner notre dépot en local pour pouvoir travailler sur le projet à partir de nos machines: ceci peut etre fait à travers la commande : git clone "Lien de notre dépot" ( dans mon cas c'est https://github.com/MohamedAmineBOUAZIZ/MoSEF-projet-2018.git)

3)La troisième étape consiste à creér,modifier et exécuter le script du fichier fich_semaine_derniere.sh à l'aide de l'éditeur de texte VIM:

-On commence par indiquer le Shell qu'on utlise ( dans notre cas c'est bash: avec la commande #!/bin/bash
) 
-Le script créé souhaite la bienvenue à l'utlisateur qui vient de le lancer en utlisant une variable d'environnement ($USERNAME)
 
-Le script affiche la date de sa création via l'utlisation d'une variable systéme $(date)
 
-le script permet de revenir à la home et d'afficher son contenu: Afficher tous les répertoires contenus dans la Home(à travers les deux commandes cd ~ et ls):Donner des idées de choix de répertoires qui se trouve dans la Home à l'utilisateur
-Le script demande à l'utlisateur de saisir le chemin d'un répertoire (figurant ou pas dans la Home :via la commande read -p)
 
-Le script permet de se postionner sur le répertoire choisi par l'utlisateur via la commande cd $(Nom du répertoire choisi par l'utlisateur) et d'afficher son contenu par la suite ( via la commande ls)

-La commande bash "NomDuScriptCrée"(fich_semaine_derniere.sh) permet d'éxécuter le script: Tester la Pertinence des commandes du script


4)L'étape suivante consiste à commiter le Script crée dans le dépot local puis pousser les modifications effectuées dans le dépot distant avecles commandes ci-dessous: 

-git add "NomDuScript"(fich_semaine_derniere.sh)
 
-git commit -m "La Création du ProjetLinux2018" (dans mon cas)

-git push -u ProjetLinux2018 master

5)l'étape suivante consiste à créer une nouvelle branche en utlisant la commande : git branch "NomDeLaNouvelleBranche"(PLM2018 dans mon cas)

6)L'étape suivante consiste à modifier le Script déja crée mais en l'éditant cette fois sur la nouvelle branche PLM2018 ( aprés avoir basculer sur la nouvelle branche) en ajoutant une commande ( find -type f -mtime -7) qui permet d'afficher , dans le répertoire choisi préalablement par l'utlisateur, tous les fichiers qui ont subi des modfications il y a moins d'une semaine.

7)L'étape suivante consiste à pousser les changements apportés au Script fich_semaine_derniere.sh en local vers mon dépot distant: 

-git add "NomDuScript"(fich_semaine_derniere.sh dans notre cas) 

-git commit -m "ChoisirUnNomPourLeProjet"( ProjetLinux2018Modi dans mon cas) 

-git push -ProjetLinuxModi PLM2018 (dans mon cas)

8)L'étape suivante consiste à effectuer le Pull request de la nouvelle branche PLM2018 et le fusionner dans la branche master:

-Sur mon compte GIthub aller dans MohamedAmineBOUAZIZ/MoSEF-projet-2018:Taper sur le bouton New Pull request et choisir par la suite create pull request 

-Pour merger le pull request il faut faire merge et confirm merge par la suite

9)l'étape suivante consiste à fusionner la nouvelle branche que j'ai crée en local en aplliquant les commandes ci-dessous:

-git checkout master 

-git merge PLM2018

10)La dernière étape consite à supprimer le fichier Consignes.md en local et sur mon dépot distant:

-Pour le supprimer en local il suffit juste de faire rm Consignes.md
 
-Pour le supprimer de mon dépot distant il faut faire git pull et par suite push -u PLM2018 master ( aussi git status pour vérifier l'état)


