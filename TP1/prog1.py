# prog1.py

import fonctions as f

def main():
    try:
        # Saisie des nombres
        a = int(input("Entrez la base (a) : "))
        b = int(input("Entrez l'exposant (b) : "))
        
        # Appel de la fonction puissance et affichage du résultat
        res = f.puissance(a, b)
        print(f"{a} élevé à la puissance {b} est {res}")
    except ValueError:
        print("Veuillez entrer des nombres valides.")
    except TypeError as e:
        print(e)

if __name__ == "__main__":
    main()

