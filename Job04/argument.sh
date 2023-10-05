#!/bin/bash
nouveauFichier="$1"
contenuFichier="$2"

# Copie le contenu du fichier source dans le nouveau fichier en utilisant la redirection
cat "$2" > "$1"
