#!/bin/bash

#Conditions pour afficher un message
if [ "$1" = "Hello" ]
then echo "Bonjour, je suis un script !"
elif [ "$1" = "Bye" ]
then echo "Au revoir et bonne journée !"
else echo "Ciao"
fi
