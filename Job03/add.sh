#!/bin/bash

# Récupérer les deux nombres à partir des paramètres
nombre1="$1"
nombre2="$2"
# Additionner les deux nombres
resultat=$(( nombre1 + nombre2 ))
# Afficher le résultat
echo "Result : $resultat"
