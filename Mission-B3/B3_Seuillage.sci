// Lecture de l'image
img = readpbm('B3.pbm');

// Déclaration & initialisation de 4 variables pour déterminer l'effectif
// d'un nombre de valeurs comprises dans un intervalles.
seuil1=65
seuil2=129
seuil3=193
 
// Affichage de texte.
disp("Les coordonnées optimal pour atterrissage robot ou fusée sont : ")

    // Boucle pour parcourir l'image. 
    for c=1:512
       for l=1:384
           // Condition pour compter le nombres de pixel choisi qui possède une 
           // valeur daun un des intervalles ci-dessous.
           if img(c,l)<seuil1
              img(c,l)=64;
           elseif (img(c,l)>(seuil1-1) & img(c,l) < seuil2)
              img(c,l)=128;
           elseif (img(c,l)>(seuil2-1) & img(c,l) < seuil3)
              img(c,l)=192;
           else
              img(c,l)=255;
           end
       end
   end
    
// Affichage de l'image modifié.
display_gray(img)
