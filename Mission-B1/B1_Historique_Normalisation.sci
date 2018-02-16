// Lecture de l'image
img = readpbm('B1.pbm');

//Attribution de la taille de l'image
[colonne, ligne]=size(img)

// Déclaration & initialisation de deux variables pour déterminer
// la valeur minimale et maximale de l'image.
maximum=max(img)
minimum=min(img)

    // Boucle pour parcourir l'image. 
    for c=1:colonne                   
        for l=1:ligne
            // Modification de la valeur des pixel 
             // en fonction de notre coefficient linéaire.
            img(c,l)=(255*((img(c,l)-minimum)/(maximum-minimum)))
       end
    end

// Affichage de l'historique
histplot(255,img)
