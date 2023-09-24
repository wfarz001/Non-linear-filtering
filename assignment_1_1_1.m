% MatLab code for High Boost Filtering

% read the image in variable 'a'
a=imread('Image.jpg');
a=imrotate(a,-90);
a=rgb2gray(a);
a=imresize(a,[1024,1024]);
figure(1); imshow(a,[]); title('Original Image', 'FontSize', 15); 
  
% Define the High Boost Filter 
% with central value=9 and A=1.
HBF=[0 -1 0; -1 10 -1; 0 -1 0];
  
% Convolve the image 'a' with HBF.
a1=conv2(a, HBF, 'same');
  
% Normalise the intensity values.
a2=uint8(a1);
  
%Display the sharpened image.
figure(2), imshow(a2,[]);  title('After appling HighBoost Filter (with central value=9)', 'FontSize', 15);

% Define the HBF with Central value=14 and A=1.
SHBF=[-1 -1 -1; -1 15 -1; -1 -1 -1];
  
% Convolve the image 'a' with HBF.
a3=conv2(a,SHBF, 'same');
  
% Normalise the intensity values.
a4=uint8(a3);
  
% Display the sharpened image.
figure(3),imshow(a4,[]);title('After appling HighBoost Filter (with central value=14)', 'FontSize', 15);