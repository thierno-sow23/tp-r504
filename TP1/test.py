# test_fonctions.py

import pytest
import fonctions as f

def test_puissance():
    # Test de la fonction puissance avec des valeurs spécifiques
    assert f.puissance(2, 3) == 8
    assert f.puissance(2, 2) == 4

def test_puissance_negatives():
    # Test de la fonction puissance avec des valeurs négatives
    assert f.puissance(-2, 3) == -8   # -2 élevé à la puissance 3 est -8
    assert f.puissance(-2, 2) == 4    # -2 élevé à la puissance 2 est 4
    assert f.puissance(2, -3) == 1/8  # 2 élevé à la puissance -3 est 1/8 (0.125)
    assert f.puissance(-2, -2) == 1/4 # -2 élevé à la puissance -2 est 1/4 (0.25)

