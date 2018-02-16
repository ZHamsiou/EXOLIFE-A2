// Lecture de l'image
img=readpbm('U2.pbm');

//Attribution de la taille de l'image
[colonne, ligne]=size(img)

//Seuil déterminé par l'histogramme.
seuil=100

// Boucle pour parcourir l'image.
for c=1:colonne                   
    for l=1:ligne
        if img(c,l)> seuil
            // Remplacement des pixels au-dessus du seuil
            img(c,l)=255
        end
    end
end

// Affichage de l'image.
display_gray(img);

