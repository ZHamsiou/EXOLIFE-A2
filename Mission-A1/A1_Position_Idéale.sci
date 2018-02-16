// Lecture de l'image
img = readpbm('A1.pbm');

//Attribution de la taille de l'image
[colonne, ligne]=size(img)

// Déclaration & initialisation d'une variable pour déterminer
// la valeur maximale de gris (le plus haut niveau de gris)
max_gray=max(img);

// Déclaration & initialisation d'un compteur pour déterminer
// le nombre de coordonnées de zones d'atterrissage possibles.
coordonnées=0;

// Déclaration & initialisation de deux tableaux pour consigner
// les coordonnées de la d'atterrissage possibles.
posX= [0,0]
// Déclaration & initialisation d'un deuxième compteur.
i=1

// Affichage de texte.
disp("Les coordonnées optimales pour atterrissage robot ou fusée sont : ")

// Boucle pour parcourir l'image.
for c=1:colonne
    for l=1:ligne
           // Condition pour déterminer si le pixel choisi possède la valeur
           // attendue.
           if img(c,l)==max_gray
              // Affichage de texte.
              disp("(" + string(c) + "," + string(l) +") ;")
              // Incrémentation du compteur.
              coordonnées=coordonnées+1
              posX(i)=(c,l)
              i=i+1  
        end
    end
 end
 
    // Affichage de texte.
disp("Il y a " + string(coordonnées) + " position possible.")
