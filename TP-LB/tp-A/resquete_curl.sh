#!/bin/bash
# l'option -s sert à ...
# Faire 500 appels à localhost:83
for i in {1..500}
do
  curl -s http://localhost:83 | grep "<h1>"  # Afficher la ligne contenant <h1> pour identifier le serveur
done

