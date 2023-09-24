
%%%% Non-linear Median Filter %%%%%%%%%%%%%%


% read the image in variable 'a'
a=imread('Image.jpg');
a=imrotate(a,-90);
a=rgb2gray(a);
a=imresize(a,[1024,1024]);
figure(1); imshow(a,[]); title('Original Image', 'FontSize', 15); 

%adding salt & pepper noise in the original image%%%%%

J = imnoise(a,'salt & pepper',0.01);

figure(2); imshow(J,[]); title('Noisy(Salt& Pepper) Image', 'FontSize', 15); 

K=medfilt2(J,[3 3]);

figure(3); imshow(K,[]); title('Filtered Image (kernel 3x3)', 'FontSize', 15);

L=medfilt2(J,[5 5]);

figure(4); imshow(L,[]); title('Filtered Image (kernel 5x5)', 'FontSize', 15);

M=medfilt2(J,[7 7]);

figure(5); imshow(M,[]); title('Filtered Image (kernel 7x7)', 'FontSize', 15);

% Calculating Structural Similarity of original and median filter filtered
% image
[ssimval_1,ssimmap_1]=ssim(a,K);
%fprintf('\n The SSIM value of laplacian filtered image\n ', +num2str(ssimval_1));
%figure(4);imshow(ssimmap_1,[]);
%title("Local SSIM Map for Laplacian Filtered Image : "+num2str(ssimval_1))


[ssimval_2,ssimmap_2]=ssim(a,L);
%fprintf('\n The SSIM value of laplacian filtered image\n ', +num2str(ssimval_1));
%figure(5); imshow(ssimmap_2,[]);
%title("Local SSIM Map for Laplacian (Strong) Filtered Image : "+num2str(ssimval_2))

[ssimval_3,ssimmap_3]=ssim(a,M);
