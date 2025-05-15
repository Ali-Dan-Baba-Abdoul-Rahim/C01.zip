#!/bin/bash
# Ce script recherche une chaîne de caractères dans un fichier donné

if [ $# -ne 2 ]; then
  echo "Usage : $0 <fichier> <chaine>"
  exit 1
fi

FILENAME="$1"
SEARCH="$2"

if [ ! -f "$FILENAME" ]; then
  echo "Le fichier $FILENAME n'existe pas."
  exit 1
fi

if grep -q "$SEARCH" "$FILENAME"; then
  echo "La chaîne '$SEARCH' a été trouvée dans $FILENAME."
else
  echo "La chaîne '$SEARCH' n'a pas été trouvée dans $FILENAME."
fi
