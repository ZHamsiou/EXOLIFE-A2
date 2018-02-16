   // Lecture de l'image
   img = readpbm('X2.pbm');
   // Déclaration & Initialisation d'un tableau pour le filtre.
   tab = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
   
   // Boucle qui permet l'application du filtre.
   for c=3:598
   for l=3:398
           
           tab(1) = img(c-2,l-2)
           tab(2) = img(c-1,l-2)
           tab(3) = img(c,l-2)
           tab(4) = img(c+1,l-2)
           tab(5) = img(c+2,l-2)
           tab(6) = img(c-2,l-1)
           tab(7) = img(c-1,l-1)
           tab(8) = img(c,l-1)
           tab(9) = img(c+1,l-1)
           tab(10) =img(c+2,l-1)
           tab(11) =img(c-2,l)
           tab(12) =img(c-1,l)
           tab(13) =img(c,l)
           tab(14) =img(c+1,l)
           tab(15) =img(c+2,l)
           tab(16) =img(c-2,l+1)
           tab(17) =img(c-1,l+1)
           tab(18) =img(c,l+1)
           tab(19) =img(c+1,l+1)
           tab(20) =img(c+2,l+1)
           tab(21) =img(c-2,l+2)
           tab(22) =img(c-1,l+2)
           tab(23) =img(c,l+2)
           tab(24) =img(c+1,l+2)
           tab(25) =img(c+2,l+2)
           // Le pixel prend la valeur de la moyenne de ce filtre.
           img(c,l)=median(tab)
      end
   end
   
    // Traitement des bords
    for c=1:2
       for l=1:399
           img(c,l)=80
        end
    end
   
   for c=599:600
        for l=1:399
               img(c,l)=80
        end
   end
   
   for c=1:600
       for l=1:2
           img(c,l)=80
    end
   end
   
   for c=1:600
       for l=399:400
           img(c,l)=80
   end
   end
   // Affichage de l'image.
    display_gray(img);
