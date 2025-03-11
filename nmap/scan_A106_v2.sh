#!/bin/bash

# Définition du sous-réseau à scanner
SUBNET="172.16.0.0/24"

# Exécute Nmap pour scanner les ports TCP et UDP sur le sous-réseau défini
sudo nmap -sS -sU -F --open "$SUBNET" -oG - | awk '

# Lorsqu'une ligne indique qu'un hôte est actif, on récupère son adresse IP
/Up$/ { 
    ip=$2  # Stocke l'adresse IP de la machine active
}

/Ports:/ { 
    # Extraction de la partie contenant les informations sur les ports
    split($0, fields, "Ports: ")  # Sépare la ligne en deux parties à partir de "Ports: "
    split(fields[2], ports, ", ") # Découpe la liste des ports en éléments individuels

    # Initialisation des compteurs pour chaque type de port
    tcp_count=0          # Compteur pour les ports TCP ouverts
    udp_open_count=0     # Compteur pour les ports UDP ouverts
    udp_closed_count=0   # Compteur pour les ports UDP fermés

    # Parcours de tous les ports trouvés pour cette machine
    for (i in ports) {  
        # Vérifie si le port est ouvert et s'il appartient au protocole TCP
        if (ports[i] ~ /open/ && ports[i] ~ /tcp/) tcp_count++      

        # Vérifie si le port est ouvert et s'il appartient au protocole UDP
        if (ports[i] ~ /open/ && ports[i] ~ /udp/) udp_open_count++ 

        # Vérifie si le port est fermé et s'il appartient au protocole UDP
        if (ports[i] ~ /closed/ && ports[i] ~ /udp/) udp_closed_count++ 
    }

    # Affiche les résultats sous forme de ligne CSV : IP ; Ports_TCP_Ouverts ; Ports_UDP_Ouverts ; Ports_UDP_Fermés
    print ip ";" tcp_count ";" udp_open_count ";" udp_closed_count  
}'

