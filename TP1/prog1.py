# prog1.py

import fonctions as f

def main():
    try:
        # Tester avec des flottants au lieu des entiers
        a = float(input("Entrez la base (a) : "))  # Passez un flottant pour le test
        b = float(input("Entrez l'exposant (b) : "))  # Passez un flottant pour le test
        
        # Appel de la fonction puissance et affichage du résultat
        res = f.puissance(a, b)
        print(f"{a} élevé à la puissance {b} est {res}")
    except ValueError:
        print("Veuillez entrer des nombres valides.")
    except TypeError as e:
        print(e)

if __name__ == "__main__":
    main()

