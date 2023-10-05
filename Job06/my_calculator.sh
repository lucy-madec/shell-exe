#!/bin/bash

nombre1="$1"
operateur="$2"
nombre2="$3"

#CALCULS
case "$operateur" in
  +)
   resultat=$(($nombre1 + $nombre2))
  ;;
  -)
   resultat=$(("$nombre1" -  "$nombre2"))
   ;;
  x)
   resultat=$(("$nombre1" * "$nombre2"))
   ;;
  /)
   resultat=$(("$nombre1" / "$nombre2"))
   ;;
esac

#AFFICHER RESULTAT
echo "Résultat : $resultat"
