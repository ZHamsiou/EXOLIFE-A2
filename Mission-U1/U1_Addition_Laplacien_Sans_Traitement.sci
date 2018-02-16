// Lecture de l'image
img=readpbm('U1.pbm');

//Définition de matrice de convulution laplacienne
filtre=[0,-1,0;-1,4,-1;0,-1,0];

//Application de la convultion.
imgc=conv2(img,filtre,'same');

//Ajout du filtre à l'image pour appliquer le rendu
imgadd=imgc+img;

//Affichage de l'image finale
display_gray(imgadd);
