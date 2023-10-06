#!/bin/bash

#Spécifier le chemin vers le fichier CSV
fichier_csv="/home/lucy/Documents/shell.exe/Job09/Shell_Userlist.csv"

#Lecture du fichier CSV et affichage des informations
while IFS=, read -r Id Prenom Nom Mdp Role
do
  utilisateur="${Prenom,,}${Nom,,}"
  mot_de_passe=$(mkpasswd -msha-512 "$mdp")

#Afficher le Mot de passe
  if id "$utilisateur" &>/dev/null; then
            echo "L'utilisateur $utilisateur  existe déjà."
       else
       if useradd --badname -m -p "$Mdp" "$utilisateur"; then
            echo "L'utilisateur $utilisateur a été créé."

                if [ "$Role" == "Admin" ]; then
	              usermod -aG sudo "$utilisateur"
                      echo "Attribution des droits d'administrateur à $utilisateur"
                fi
       else
	   echo "Erreur lors de la création de l'utilisateur $utilisateur."
      fi
sudo rm -rf /home/prenomnom

  fi

done < "$fichier_csv"
