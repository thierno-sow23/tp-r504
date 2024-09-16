print ( " Hello , World ! " )
while True:
    try:
        # Saisie du nombre
        nombre = float(input("Entrez un nombre (ou CTRL-C pour quitter) : "))
        
        # Calcul et affichage du carré du nombre
        carre = nombre ** 2
        print(f"Le carré de {nombre} est {carre}")
    except ValueError:
        # Gestion des erreurs si l'entrée n'est pas un nombre
        print("Ce n'est pas un nombre valide. Veuillez réessayer.")

