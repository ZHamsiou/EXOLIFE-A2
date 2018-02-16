// Lecture de l'image
img = readpbm('A2.pbm');

//Attribution de la taille de l'image
[colonne, ligne]=size(img)

// Déclaration & initialisation d'une variable pour déterminer
// la somme des valeurs de chaque pixel.
somme_pix=0;

// Déclaration & initialisation de 2 variables pour déterminer
// la somme des valeurs de chaque pixel.
moy1=0;
moy2=0;

//Boucle par parcourir le tableau afin de réaliser la somme.
for c=1:colonne
     for l=1:ligne
         somme_pix = somme_pix+ img(c,l);
     end
end

//Méthode1 : "Attribution de la moyenne + un produit en croix afin de 
//déterminer le taux
moy1=((somme_pix/(512*384))*100/255);

//Méthode1 : "Calcul de la moyenne depuis la matrice image + un produit en 
//croix afin de déterminer le taux
moy2=(mean(img)*100/255);

// Affichage de texte.
disp("Par la méthode 1, la proportion de gaz est de : " + string(moy1) + "%");
disp("Par la méthode 2, la proportion de gaz est de : " + string(moy2) + "%");

// Affichage de l'image.
display_gray(img);

