// Lecture de l'image
img = readpbm('A4.pbm');

// Création d'un tableau pour la médiane
tab = [0,0,0,0,0,0,0,0,0]

   for c=2:858
       for l=2:458
        
        // Création d'un tableau pour la médiane
        tab(1) = img(c-1,l-1)
        tab(2) = img(c-1,l)
        tab(3) = img(c-1,l+1)
        tab(4) = img(c,l-1)
        tab(5) = img(c,l)
        tab(6) = img(c,l+1)
        tab(7) = img(c+1,l-1)
        tab(8) = img(c+1,l)
        tab(9) = img(c+1,l+1)
                
        img(c,l) = median(tab);
    
       end
    end
    
    // Traitement des bords
    for l=1:459
        img(1,l)=80
    end
   
   
   
    for l=1:459
        img(859,l)=80
    end
   
   
   for c=1:859
         img(c,1)=80
   end
   
   for c=1:859
        img(c,459)=80
   end


// Affichage de l'image modifié.
display_gray(img)
