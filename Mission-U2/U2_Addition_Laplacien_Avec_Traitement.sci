// Lecture de l'image
img=readpbm('U2.pbm');

//Définition de matrice de convulution laplacienne
filtre=[0,-1,0;-1,4,-1;0,-1,0];

//Application de la convultion
imgc=conv2(img,filtre,'same');

//Ajout du filtre à l'image pour appliquer le rendu
imgadd=imgc+img;

//Boucle qui permet de rééquilibrer les tons blancs de l'image afin d'avoir 
//un rendu proche de l'original et enlever les résidus du filtre
   for l = 2:513
        for c = 2:418
            if (imgadd(c,l)<0)
                //Toutes les valeurs négatives sont remises en noir
                imgadd(c,l)=30;
            end
        end
    end
    //Affichage de l'image finale
    display_gray(imgadd);
