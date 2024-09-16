print ( " Hello , World ! " )
# prog1.py

import fonctions as f

def main():
    # Saisie des nombres
    a = int(input("Entrez la base (a) : "))
    b = int(input("Entrez l'exposant (b) : "))
    
    # Appel de la fonction puissance et affichage du résultat
    res = f.puissance(a, b)
    print(f"{a} élevé à la puissance {b} est {res}")

if __name__ == "__main__":
    main()

