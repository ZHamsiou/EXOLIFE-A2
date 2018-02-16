// Chargement du fichier X1.
// le fichier est stocké dans la variale "imgT".
load('X1.dat');

// Déclaration & initialisation d'une variable où est stocké la nouvelle image
// qui résulte de la transformée de fourrier inverse de l'image source.
img=ifft(imgT);

// Déclaration & initialisation d'une variable où est stocké la nouvelle image
// qui résulte de la transformée de fourrier inverse de l'image précédente.
img2=fft(img);

//Traitement de l'image de l'image par la valeur absolue 
//et de la divion par 100
image=abs(img2)/100

// On applique une transformée de fourrier discréte TFD centrée en 0
image=fftshift(image);

//Affichage de l'image
display_gray(image);
