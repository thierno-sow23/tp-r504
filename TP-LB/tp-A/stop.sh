#!/bin/bash

# Arrêter et supprimer le conteneur nginx1
docker stop nginx1 2>/dev/null && echo "Conteneur nginx1 arrêté et supprimé." || echo "Le conteneur nginx1 n'existe pas."

# Arrêter et supprimer le conteneur nginx2
docker stop nginx2 2>/dev/null && echo "Conteneur nginx2 arrêté et supprimé." || echo "Le conteneur nginx2 n'existe pas."

# Arrêter et supprimer le conteneur nginx-lb
docker stop nginx-lb 2>/dev/null && echo "Conteneur nginx-lb arrêté et supprimé." || echo "Le conteneur nginx-lb n'existe pas."

echo "Tous les conteneurs sont arrêtés."

