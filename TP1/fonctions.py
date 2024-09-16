# fonctions.py

def puissance(a, b):
    """
    Cette fonction calcule a élevé à la puissance b et renvoie le résultat,
    après avoir vérifié que les deux arguments sont des entiers.
    
    :param a: L'entier de base
    :param b: L'exposant entier
    :return: Le résultat de a**b
    :raises TypeError: Si a ou b ne sont pas des entiers
    """
    # Vérification que a et b sont des entiers
    if not isinstance(a, int) or not isinstance(b, int):
        raise TypeError("Only integers are allowed")
    
    # Calcul et retour du résultat
    return a ** b

