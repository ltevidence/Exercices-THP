#Tour d'une partie de Morpion
Une boucle commence :
Joueur 1 pose un symbole X
Joueur 2 pose un symbole O

---- Jusqu'à (boucle UNTIL) -----

SI joueur arrive à faire une ligne verticale/horizontale ou diagonale de 3 symboles
ALORS le joueur gagne.

SI le plateau est plein sans faire une ligne verticale/horizontale ou diagonale de 3 symboles 
ALORS la partie est nulle.

QUAND 3 = X en ligne
  ALORS "Le joueur 1 a gagné !"
QUAND 3 = O en ligne
  ALORS "Le joueur 2 a gagné !"
ELSE "Aucun joueur ne gagne !"

