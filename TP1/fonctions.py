def puissance(a, b):
    """
    Cette fonction calcule a élevé à la puissance b et renvoie le résultat.
    
    :param a: L'entier de base
    :param b: L'exposant entier
    :return: Le résultat de a**b
    """
    return a ** b

# Exemple d'utilisation
if __name__ == "__main__":
    a = int(input("Entrez la base (a) : "))
    b = int(input("Entrez l'exposant (b) : "))
    
    resultat = puissance(a, b)
    print(f"{a} élevé à la puissance {b} est {resultat}")

