#!/bin/bash
# Ce script effectue une opération arithmétique simple entre deux nombres

if [ $# -ne 3 ]; then
  echo "Usage : $0 <nombre1> <nombre2> <opérateur>"
  echo "Opérateurs supportés : + - * /"
  exit 1
fi

A=$1
B=$2
OP=$3

if ! [[ "$A" =~ ^[0-9]+$ && "$B" =~ ^[0-9]+$ ]]; then
  echo "Erreur : les deux premiers arguments doivent être des nombres."
  exit 1
fi

case "$OP" in
  +)
    RESULT=$((A + B))
    ;;
  -)
    RESULT=$((A - B))
    ;;
  \*)
    RESULT=$((A * B))
    ;;
  /)
    if [ "$B" -eq 0 ]; then
      echo "Erreur : division par zéro."
      exit 1
    fi
    RESULT=$((A / B))
    ;;
  *)
    echo "Opérateur invalide. Utilisez +, -, *, /"
    exit 1
    ;;
esac

echo "Résultat : $RESULT"
