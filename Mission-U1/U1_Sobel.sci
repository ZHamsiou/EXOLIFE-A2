//Lecture de l'image
img=readpbm('U1.pbm');

//Définition de matrice de convulution Sobel
filtre=[-1,2,-2;0,0,0;1,2,1];

//Application de la convultion
imgc=conv2(img,filtre,'same');

//Affichage de l'image finale
display_gray(imgc);
