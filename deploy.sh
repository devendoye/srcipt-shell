#!/bin/bash

##############################################################################
#                   Script de deploiment 
#                   Auteur : Daouda
#                   Date : 25/11/2019
#############################################################################

if [ "$1" = "--create" ] 
then echo "-option de create"
elif [ "$1" = "--drop" ]
then echo "-option de drop"
elif [ "$1" = "--infos" ]
then echo "options de infos"
elif [ "$1" = "--start" ]   
then echo "options start"
elif [ "$1" = "--ansible" ]
then echo "options ansible"
else
echo "
      -options:
               - --create : lancer des conteneurs
	       - --drop :  supprimer les conteneurs créer par le deploy.sh
	       - --infos : caractéristiques des conteneurs (ip , nom , user)
	       - --start : demarage des conteneurs 
	       - --ansible: déploiment arborescence ansible "
	      fi
