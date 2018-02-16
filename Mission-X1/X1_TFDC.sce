// Chargement du fichier X1.
// le fichier est stocké dans la variale "imgT".
load('X1.dat');

//Traitement de l'image de l'image par la valeur absolue 
//et de la divion par 100
img=(abs(imgT))/100;

// On applique une transformée de fourrier discréte TFD centrée en 0
image=fftshift(img);

//Affichage de l'image
display_gray(image);

