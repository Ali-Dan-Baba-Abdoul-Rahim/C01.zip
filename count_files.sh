#!/bin/bash
# Ce script compte le nombre de fichiers dans un répertoire donné

if [ -z "$1" ]; then
  echo "Usage : $0 <nom_dossier>"
  exit 1
fi

FOLDER="$1"

if [ ! -d "$FOLDER" ]; then
  echo "Le dossier $FOLDER n'existe pas."
  exit 1
fi

FILE_COUNT=$(find "$FOLDER" -type f | wc -l)
echo "Le dossier $FOLDER contient $FILE_COUNT fichier(s)."
