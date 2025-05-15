#!/bin/bash
# Ce script affiche l'utilisation du disque

echo "Utilisation du disque (df -h) :"
df -h

echo ""

echo "Utilisation du répertoire courant (du -sh .) :"
du -sh .
