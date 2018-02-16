// Lecture de l'image
img = readpbm('A3.pbm');

//Attribution de la taille de l'image
[colonne, ligne]=size(img)

// Déclaration & initialisation d'une variable pour déterminer
// le seuil de valeurs  minimales de gris (le seuil du plus haut niveau de gris)
seuil=0
 
// Déclaration & initialisation de 9 variables pour déterminer l'effectif
// d'un nombre de valeurs comprises dans un intervalles.
effectif1=0
effectif2=0
effectif3=0
effectif4=0
effectif5=0
effectif6=0
effectif7=0
effectif8=0
effectif9=0 

// Déclaration & initialisation de 8 variables pour déterminer l'effectif
// cumulé d'un nombre de valeurs comprises dans un intervalles.
cumul1=0
cumul2=0
cumul3=0
cumul4=0
cumul5=0
cumul6=0
cumul7=0
cumul8=0

// Déclaration & initialisation d'une variable pour déterminer le nombre
// où est situé le troisième quartile de cette série de valeurs.
Q3=(512*384*3/4)

    // Boucle pour parcourir l'image. 
    for c=1:colonne
       for l=1:ligne
           // Condition pour compter l'effectif de pixels qui possède une 
           // valeur daun un des intervalles ci-dessous.
           if img(c,l)< 129
              effectif1=effectif1+1
           elseif img(c,l)< 145
              effectif2=effectif2+1
           elseif img(c,l)< 161
              effectif3=effectif3+1
           elseif img(c,l)< 177
              effectif4=effectif4+1
           elseif img(c,l)< 193
              effectif5=effectif5+1
           elseif img(c,l)< 209
              effectif6=effectif6+1
           elseif img(c,l)< 225
              effectif7=effectif7+1
           elseif img(c,l)< 241
              effectif8=effectif8+1
           else
              effectif9=effectif9+1
           end
       end
   end
    
// Affectation des valeurs d'effectifs cumulés.
 cumul1=effectif1
 cumul2=effectif1+effectif2
 cumul3=effectif1+effectif2+effectif3
 cumul4=effectif1+effectif2+effectif3+effectif4
 cumul5=effectif1+effectif2+effectif3+effectif4+effectif5
 cumul6=effectif1+effectif2+effectif3+effectif4+effectif5+effectif6
 cumul7=effectif1+effectif2+effectif3+effectif4+effectif5+effectif6+effectif7
 cumul8=effectif1+effectif2+effectif3+effectif4+effectif5+effectif6+effectif7+effectif8
    
    // Condition pour déterminer le troisième quartile.
    if(cumul1>Q3)
    // Affectation du seuil à partir le troisième quartile.
        seuil=128
    elseif(cumul2>Q3)
        seuil=144
    elseif(cumul3>Q3)
        seuil=160
    elseif(cumul4>Q3)
        seuil=176
    elseif(cumul5>Q3)
        seuil=192
    elseif(cumul6>Q3)
        seuil=208
    elseif(cumul7>Q3)
        seuil=224
    elseif(cumul8>Q3)
        seuil=240
    else
        seuil=255
    end
    
    // Boucle pour afficher les coordonnées de zone d'atterrissage. 
    for c=1:colonne
        for l=1:ligne
            if img(c,l)>=seuil
              // Modification de la valeur dans ce pixel (haut niveau de gris --> blanc).
               img(c,l)=210;
            else
               //Modification de la valeur des autres pixels 
               //(bas niveau de gris --> noir).
               img(c,l)=30;
            end
        end
    end

// Affichage de l'image modifié.
display_gray(img)
