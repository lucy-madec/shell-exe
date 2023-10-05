#!/bin/bash

#Nombre de connexion de l'utilisateur
utilisateur="lucy"
nombre_de_connexion=$(last | grep "$utilisateur" | wc -l)

echo "Nombre de connexion : $nombre_de_connexion"

#Fichier avec la date de connexion
day=$(date +'%d-%m-%Y-%H-%M')
sortie="$nombre_de_connexion-$day"

echo "$nombre_de_connexion" > "$sortie"

#Création du dossier Backup mkdir /home/lucy/Documents/shell.exe/Job08

#Archivage en tar
tar -cvf /home/lucy/Documents/shell.exe/Job08/Backup/$sortie.tar $sortie
rm $sortie
