#!/bin/bash

# Définition du sous-réseau à scanner
SUBNET="172.16.0.0/24"

# Fichier de sortie
OUTPUT_FILE="$HOME/rt-r504/nmap/scan-result_1.csv"

# Écriture de l'en-tête du fichier CSV
echo "IP;Nombre_de_ports_TCP_ouverts" > "$OUTPUT_FILE"

# Exécuter Nmap pour détecter les machines actives et extraire les informations
sudo nmap -F --open "$SUBNET" -oG - | awk '
/Up$/{ ip=$2 } # Récupérer l'adresse IP des machines actives
/Ports:/ {
    split($0, fields, "Ports: ") # Séparer la ligne en deux parties en utilisant "Ports: "
    split(fields[2], ports, ", ") # Diviser la liste des ports ouverts
    count=0
    for (i in ports) if (ports[i] ~ /open/) count++ # Compter les ports ouverts
    print ip ";" count # Écrire dans le fichier
}' >> "$OUTPUT_FILE"

echo "Scan terminé. Résultats enregistrés dans : $OUTPUT_FILE"

