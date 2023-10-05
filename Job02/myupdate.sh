#!/bin/bash

# Mettre à jour la base de données des paquets et tous les paquets du système
sudo pacman -Sy && sudo pacman -Su --noconfirm
