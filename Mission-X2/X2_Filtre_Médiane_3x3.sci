//filtre de convolution masque médian 3x3
 img = readpbm('X2.pbm');
 tab = [0,0,0,0,0,0,0,0,0]
 for c=2:598
   for l=2:398
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
    for l=1:399
        img(1,l)=80
    end
   
   
   
    for l=1:399
        img(600,l)=80
    end
   
   
   for c=1:600
           img(c,1)=80
   end
   
   for c=1:600
           img(c,400)=80
   end
   
    
    display_gray(img);
