#!/bin/bash

##############################################################################
#                   Script de deploiment 
#                   Auteur : Daouda
#                   Date : 25/11/2019
#############################################################################
# create 
echo ""
if [ "$1" = "--create" ] 
then echo "-option de create"
nbre_machine=1
["$2" !=""] && nbre_machine=$2
docker run -tid --name alpine alpine:latest
echo "j'ai crée ${nbre_machine}"
echo ""
elif [ "$1" = "--drop" ]
then echo "-option de drop"
docker rm -f alpine
echo ""
elif [ "$1" = "--infos" ]
then echo "options de infos"
echo ""
elif [ "$1" = "--start" ]   
then echo "options start"
docker ps -a
echo ""
elif [ "$1" = "--ansible" ]
echo ""
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
