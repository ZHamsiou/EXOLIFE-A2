// Lecture de l'image
img = readpbm('A1.pbm');

//Attribution de la taille de l'image
[colonne, ligne]=size(img)

// Déclaration & initialisation d'un compteur pour déterminer
// le nombre de coordonnées de zones d'atterrissage possibles.
coordonnées=0
 
// Déclaration & initialisation d'une variable pour déterminer
// le seuil de valeurs  minimales de gris (le seuil du plus haut niveau de gris)
seuil=0
 
// Déclaration & initialisation de 4 variables pour déterminer l'effectif
// d'un nombre de valeurs comprises dans un intervalle.
effectif1=0
effectif2=0
effectif3=0
effectif4=0
 
// Déclaration & initialisation de 3 variables pour déterminer l'effectif
// cumulé d'un nombre de valeurs comprises dans un intervalle.
cumul1=0
cumul2=0
cumul3=0

// Déclaration & initialisation d'une variable pour déterminer le nombre
// où est situé le troisième quartile dans série de valeurs présentes dans la 
// matrice image.
Q3=(512*384*3/4)

// Affichage de texte.
disp("Les coordonnées optimal pour atterrissage robot ou fusée sont : ")

    // Boucle pour parcourir l'image. 
    for c=1:colonne
       for l=1:ligne
           // Condition pour compter l'effectif de pixels qui possède une 
           // valeur dans un des intervalles ci-dessous.
           if img(c,l)< 129
              effectif1=effectif1+1
           elseif img(c,l)<161
              effectif2=effectif2+1
           elseif img(c,l)< 193
              effectif3=effectif3+1
           else
              effectif4=effectif4+1
           end
       end
   end
    
// Affectation des valeurs d'effectifs cumulés.
cumul1=effectif1
cumul2=effectif1+effectif2
cumul3=effectif1+effectif2+effectif3
    
    // Condition pour déterminer le troisième quartile.
    if(cumul1>Q3)
        // Affectation du seuil à partir le troisième quartile.
        seuil=128
    elseif(cumul2>Q3)
        seuil=160
    elseif(cumul3>Q3)
        seuil=192
    else
        seuil=255
    end
    
    // Boucle pour afficher les coordonnées de zone d'atterrissage. 
    for c=1:colonne
        for l=1:ligne
            if img(c,l)>=seuil
               // Incrémentation du compteur.
               coordonnées=coordonnées+1
               // Affichage de texte.
               disp("   (" + string(c) + "," + string(l) +") ;   ")
              // Modification de la valeur dans ce pixel (haut niveau de gris --> noir).
               img(c,l)=50;
            end
        end
    end

 // Affichage de texte.
disp("Il y a " + string(coordonnées) + " positions possibles.")

// Affichage de l'image modifié.
display_gray(img)
