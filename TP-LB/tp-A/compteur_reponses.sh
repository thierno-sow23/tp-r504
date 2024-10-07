#!/bin/bash

# Initialiser les compteurs pour chaque serveur
count_hello1=0
count_hello2=0

# Faire 500 appels à localhost:83
for i in {1..500}
do
  response=$(curl -s http://localhost:83 | grep "<h1>")  # Extraire la ligne avec <h1>

  if [[ $response == *"Hello 1"* ]]; then
    ((count_hello1++))  # Incrémenter le compteur pour le serveur 1
  elif [[ $response == *"Hello 2"* ]]; then
    ((count_hello2++))  # Incrémenter le compteur pour le serveur 2
  fi
done

# Afficher les résultats
echo "Réponses du serveur 1 (Hello 1) : $count_hello1"
echo "Réponses du serveur 2 (Hello 2) : $count_hello2"

# Vérifier si la répartition est 50/50
total=$((count_hello1 + count_hello2))
echo "Répartition :"
echo "Serveur 1 : $((count_hello1 * 100 / total))%"
echo "Serveur 2 : $((count_hello2 * 100 / total))%"

