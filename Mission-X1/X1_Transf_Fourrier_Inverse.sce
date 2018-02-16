// Chargement du fichier X1.
// le fichier est stocké dans la variale "imgT".
load('X1.dat');

// Déclaration & initialisation d'une variable où est stocké la nouvelle image
// qui résulte de la transformée de fourrier inverse de l'image source.
img=ifft(imgT)

// Affichage de l'image.
display_gray(img)


